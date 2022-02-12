//
//  TextFieldView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 11/02/2022.
//

import SwiftUI

struct SampleTextFieldView: View {
    @State var name: String = ""
    @State var birthday: Date = Date()
    @State var age: CGFloat = 14.3
    
    var body: some View {
        VStack {
            userName
            ageView
            birthDayView
            clearBtn
        }.frame(height: 300.0)
            .padding()
    }
    
    var userName: some View {
        VStack {
            TextField("Username", text: $name) { isBegin in
                print(isBegin ? "Begins editing" : "Finished editing")
            }.textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
            Text(name == "" ? "Please, input your name" : "Hello, \(name)!")
            Spacer()
            Divider()
        }
    }
    
    var ageView: some View {
        VStack {
            TextField("Age",
                      value: $age,
                      formatter: SampleTextFieldView.numberFormater
            ).textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
            Text(age == 0 ? "Please, input your age" : "\(age)")
            Spacer()
            Divider()
        }
    }
    var birthDayView: some View {
        VStack {
            TextField(
                "Birthday",
                value: $birthday,
                formatter: SampleTextFieldView.dateformater
            ).textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
            Text(SampleTextFieldView.dateformater.string(from: birthday))
            Spacer()
            Divider()
        }
    }
    var clearBtn: some View {
        VStack {
            Button {
                name = ""
                age = 0
                birthday = Date()
            } label: {
                Text("Clear")
                    .foregroundColor(Color.white)
            }
            .padding()
            .background(Color.blue)
        }
    }

}
extension SampleTextFieldView {
    static var dateformater: DateFormatter {
        let df = DateFormatter()
        df.dateStyle = .short
        return df
    }
    
    static var numberFormater: NumberFormatter {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        return nf
    }
}

struct SampleTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SampleTextFieldView()
    }
}
