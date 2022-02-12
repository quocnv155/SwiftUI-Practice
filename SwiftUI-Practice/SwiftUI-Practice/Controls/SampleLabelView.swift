//
//  SampleLabelView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 11/02/2022.
//

import SwiftUI

struct SampleLabelView: View {
    var body: some View {
        Label("Heart Rate", systemImage: "heart.fill")
    }
}

struct SampleLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SampleLabelView()
    }
}
