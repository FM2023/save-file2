import SwiftUI

struct CherryHotel: View {
    @State private var quantity = 0
    @State private var quantity1 = 0
    @State private var selectedDate = Date()
    @State private var App = false
    var body: some View {
        VStack {
            Text("Sofitel Seoul")
                .font(.largeTitle)
            Image("sofitel")
                .resizable()
                .frame(width: 420, height: 300)
            Group {
                Text("호텔소개")
                    .bold()
                    .font(.subheadline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Sofitle is so beautiful place that you love in the world.")
                Text("Please come and relax")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("예약날짜")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.red)
                
                HStack {
                    Text("In")
                    DatePicker(selection: $selectedDate,
                               displayedComponents: [.date],
                               label: {
                        Text("Select Date")
                    })
                }
                .labelsHidden()
                
                
                HStack {
                    Text("Out")
                    DatePicker(selection: $selectedDate,
                               displayedComponents: [.date],
                               label: {
                        Text("Select Date")
                    })
                }
                .labelsHidden()
            }
            HStack {
                Stepper("성인", value: $quantity)
                    Text("\(quantity)")
                        .font(.system(size: 20))
            }
            HStack {
                Stepper("청소년", value: $quantity1)
                Text("\(quantity1)")
                    .font(.system(size: 20))
            }
            Divider()
            Text("문의하기")
                .font(.title)
            
            Spacer()
        }
    }
}

struct CherryHotel_Previews: PreviewProvider {
    static var previews: some View {
        CherryHotel()
    }
}
