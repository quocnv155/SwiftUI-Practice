//
//  SampleCamsuleView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct SampleCamsuleView: View {
    var body: some View {
        Capsule()
            .fill(Color.orange)
            .frame(width: 250, height: 100)
    }
}

struct SampleCamsuleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleCamsuleView()
    }
}
