//
//  NavigationLinkView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct NavigationLinkView: View {
    struct BananasView: View {
        var body: some View {
            Text("Bananas")
                .navigationTitle("🍌🍌")
        }
    }
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: BananasView()) {
                Text("I want bananas!")
            }
        }
    }
}

struct NavigationLinkView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkView()
    }
}
