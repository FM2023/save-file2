import SwiftUI

struct Bulb: View {
    @State private var isOn = false
    @State private var data: String = "0"
    @State private var quantity = 0
    var body: some View {
        VStack {
            Image(systemName: isOn ? "lightbulb.fill" : "lightbulb")
                .resizable()
                .frame(width: 200, height: 300)
                .foregroundColor(isOn ? .yellow : .gray)
                .padding()
            Image(systemName: isOn ? "phone.fill":"phone")
                .resizable()
                .frame(width: 60, height: 70)
                .foregroundColor(isOn ? .red : .gray)
            Toggle(isOn: $isOn, label: {
                EmptyView()
            })
            .padding()
            .labelsHidden()
            Text(data)
            Button {
                data = "\(Int.random(in: 1...45))"
            } label: {
                Text("Update")
            }
            HStack {
                
                //# 1
                Stepper("Qty", value: $quantity)
                    .padding()
                Text("\(quantity)")
                    .font(.system(size: 50))
                
            }
        }
    }
    }

struct Bulb_Previews: PreviewProvider {
    static var previews: some View {
        Bulb()
    }
}
