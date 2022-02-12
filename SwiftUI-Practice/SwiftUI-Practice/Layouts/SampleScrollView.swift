//
//  SampleScrollView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct SampleScrollView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ProfileView()
                ProfileView()
                ProfileView()
                ProfileView()
                ProfileView()
                ProfileView()
                ProfileView()
                ProfileView()
                ProfileView()
            }
        }.frame(height: 300)
    }
}
struct SampleScrollView2: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(0..<10) {_ in
                    ProfileView()
                }
            }
        }.frame(height: 300)
    }
}
struct SampleScrollView_Previews: PreviewProvider {
    static var previews: some View {
        SampleScrollView()
        SampleScrollView2()
    }
}
