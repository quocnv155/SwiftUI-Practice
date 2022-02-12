//
//  SampleProgressView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct SampleProgressView: View {
    var body: some View {
        VStack {
            ProgressView()
                .padding([.bottom], 20)
            ProgressView(value: 0.75)
                .padding([.bottom], 20)
            ProgressView(value: 0.75) {
                Text("75%")
            }
            ProgressView(value: 0.5, total: 5, label: {
                Text("10%")
            })
                .padding([.bottom], 20)
        }
    }
}

struct SampleProgressView_Previews: PreviewProvider {
    static var previews: some View {
        SampleProgressView()
    }
}
