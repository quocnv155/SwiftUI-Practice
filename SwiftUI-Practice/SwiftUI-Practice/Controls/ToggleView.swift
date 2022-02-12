//
//  ToggleView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 11/02/2022.
//

import SwiftUI

struct ToggleView: View {
    @State var isOn = true
    
    var body: some View {
        HStack {
            Toggle("Remember me", isOn: $isOn)
        }
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
