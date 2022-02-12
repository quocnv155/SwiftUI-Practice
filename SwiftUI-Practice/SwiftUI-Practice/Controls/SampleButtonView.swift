//
//  SampleButtonView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 11/02/2022.
//

import SwiftUI

struct SampleButtonView: View {
    @State var count: Int = 0
    var body: some View {
        VStack {
            Text("Count: \(count)")
                .font(.title)
            Button {
                self.count += 1
            } label: {
                Text("Press me!")
            }
            .padding()
        }
    }
}

struct SampleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SampleButtonView()
    }
}
