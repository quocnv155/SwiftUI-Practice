//
//  SampleDividerView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct SampleDividerView: View {
    var body: some View {
        VStack {
            Text("Test 1")
            Divider().background(.orange)
            Text("Name")
        }
    }
}

struct SampleDividerView_Previews: PreviewProvider {
    static var previews: some View {
        SampleDividerView()
    }
}
