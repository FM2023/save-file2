import SwiftUI

struct View_Group: View {
    @State private var isOn = false
    @State private var showAction = false
    var body: some View {
        VStack(alignment:.center, spacing: 30) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Image(systemName: isOn ? "phone.fill":"phone")
                .resizable()
                .frame(width: 80, height: 90)
                .foregroundColor(isOn ? .blue:.red)
            Toggle(isOn: $isOn, label: {
                EmptyView()
                
            })
            .labelsHidden()
            Button(action: {
                showAction = true
            }, label: {
                Image(systemName: "house.fill")
                    .resizable()
                    .frame(width: 80, height: 90)
                    .actionSheet(isPresented: $showAction) {
                        ActionSheet(title: Text("이곳을 참조하세요"),
                        message: nil, buttons: [
                            ActionSheet.Button.default(Text("서울")),
                            ActionSheet.Button.default(Text("평양")),
                            ActionSheet.Button.default(Text("부산")),
                            ActionSheet.Button.destructive(Text("Reset")),
                            .cancel()
                        ])
                    }
            })
        }
        
    }
}

struct View_Group_Previews: PreviewProvider {
    static var previews: some View {
        View_Group()
    }
}
