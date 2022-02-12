//
//  SampleHStackView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct SampleHStackView: View {
    var body: some View {
        HStack() {
            Spacer()
            Text("Welcome to Dr.JOY").font(.caption)
            Spacer()
            Text("Welcome to Dr.JOY PR.JOY").font(.title).padding()
            Spacer()
        }
    }
}

struct SampleHStackView_Previews: PreviewProvider {
    static var previews: some View {
        SampleHStackView()
    }
}
