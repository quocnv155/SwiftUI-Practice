//
//  SampleColorPickerView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct SampleColorPickerView: View {
    
    @State private var color = Color.red
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(color)
                .frame(width: 100, height: 100)
            ColorPicker("Choose a color! 🎨", selection: $color)
        }
    }
}

struct SampleColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        SampleColorPickerView()
    }
}
