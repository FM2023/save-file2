import SwiftUI

struct View_DataPickerStyle: View {
    
    @State private var selectedDate = Date()
    
    var body: some View {
        VStack {
            Text("DatePicker Styles")
                .font(.largeTitle)
            
            Spacer()
            
            Text("Date + Time")
                .font(.title)
            
            // #1
            DatePicker(selection: $selectedDate,
                       displayedComponents: [.date, .hourAndMinute],
                       label: {
                Text("Select Date")
            })
            .labelsHidden()
            
            Spacer()
            
            Text("Date Only")
                .font(.title)
            
            // #2
            DatePicker(selection: $selectedDate,
                       displayedComponents: [.date],
                       label: {
                Text("Select Date")
            })
            .labelsHidden()
            
            Spacer()
            
            Text("Time Only")
                .font(.title)
            
            // #3
            DatePicker(selection: $selectedDate,
                       displayedComponents: [.hourAndMinute],
                       label: {
                Text("Select Date")
            })
            .labelsHidden()
        }
    }
}

struct View_DataPickerStyle_Previews: PreviewProvider {
    static var previews: some View {
        View_DataPickerStyle()
    }
}
