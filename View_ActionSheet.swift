import SwiftUI

struct View_ActionSheet: View {
    @State private var color = Color.black
    @State private var showActionSheet = false
    var body: some View {
        VStack {
            Image(systemName: "sun.max.fill")
                .resizable()
                .frame(width: 150, height: 180)
            .foregroundColor(color)
            
            Button(action: {
        showActionSheet = true
            }, label: {
            Text("Show ActionSheet")
            })
            .padding()
            .actionSheet(isPresented: $showActionSheet) {
                ActionSheet(title: Text("Choose Color"), message: nil, buttons: [
                    ActionSheet.Button.default(Text("Red"), action: {
                        self.color = Color.red
                    }),
                    .default(Text("Green"), action: {
                        self.color = Color.green
                    }),
                    .default(Text("Blue"), action: {
                        self.color = Color.blue
                    }),
                    .cancel(),
                    .destructive(Text("Reset"), action: {
                        self.color = Color.black
                    })
                ])
            }
        }
    }
}

struct View_ActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        View_ActionSheet()
    }
}
