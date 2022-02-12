//
//  SamplePageView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct SamplePageView: View {
    var body: some View {
        TabView {
            Text("Bananas 🍌🍌")
            Text("Apples 🍏🍏")
            Text("Peaches 🍑🍑")
        }
        .foregroundColor(Color.white)
        .background(Color.yellow)
        .tabViewStyle(PageTabViewStyle())
    }
}

struct SamplePageView_Previews: PreviewProvider {
    static var previews: some View {
        SamplePageView()
    }
}
