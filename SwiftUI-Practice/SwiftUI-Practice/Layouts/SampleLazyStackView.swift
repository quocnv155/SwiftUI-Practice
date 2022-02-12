//
//  SampleLazyStackView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct SampleLazyStackView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(0..<100000) {_ in
                    ProfileView()
                }
            }
        }.frame(height: 300)
    }
}

struct SampleLazyStackView_Previews: PreviewProvider {
    static var previews: some View {
        SampleLazyStackView()
    }
}
