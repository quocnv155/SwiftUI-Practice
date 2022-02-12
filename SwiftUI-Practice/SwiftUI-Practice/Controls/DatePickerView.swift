//
//  DatePickerView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 11/02/2022.
//

import SwiftUI

struct SampleDatePickerView: View {
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    @State private var birthDate = Date()
    
    var body: some View {
        VStack {
            DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date) {
                Text("Select a date")
            }
            
            Text("Date is \(birthDate, formatter: dateFormatter)")
        }
    }
}

struct SampleDatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        SampleDatePickerView()
    }
}
