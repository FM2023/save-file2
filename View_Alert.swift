import SwiftUI

struct View_Alert: View {
    
    @State private var showAlert = false
    @State private var r = 0.0
    @State private var g = 0.0
    @State private var b = 0.0
    var color:Color {
        Color(red: r / 255, green: g / 255, blue:  b / 255)
    }
        var body: some View {
            VStack {
                Button(action: {
                    showAlert = true
                }, label: {
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 70, height: 60)
                        .foregroundColor(color)
                })
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("경고"),message: Text("당신은 채리를 사랑합니까?"),
                          primaryButton:.destructive(Text("Yes")), secondaryButton:.cancel())
                }
                HStack {
                    Text("R")
                    Slider(value: $r, in:0...255, step: 1, onEditingChanged: {print($0)}, label:  { EmptyView()})
                    HStack {
                        Spacer()
                        Text("\(Int(r))")
                    }
                    .frame(width: 40)
                }
                .foregroundColor(.red)
                
                HStack {
                    Text("G")
                    Slider(value: $g, in:0...255, step: 1, onEditingChanged: {print($0)}, label:  { EmptyView()})
                    HStack {
                        Spacer()
                        Text("\(Int(g))")
                    }
                    .frame(width: 40)
                }
                .foregroundColor(.green)
                
                HStack {
                    Text("B")
                    Slider(value: $b, in:0...255, step: 1, onEditingChanged: {print($0)}, label:  { EmptyView()})
                    HStack {
                        Spacer()
                        Text("\(Int(b))")
                    }
                    .frame(width: 40)
                }
                .foregroundColor(.blue)
            }
        }
    }
struct View_Alert_Previews: PreviewProvider {
    static var previews: some View {
        View_Alert()
    }
}
