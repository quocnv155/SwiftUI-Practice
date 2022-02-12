//
//  HomeSample.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 11/02/2022.
//

import SwiftUI

struct HomeSample: View {
    var body: some View {
        NavigationView {
            NavigationLink("Go to UIKit") {
                HomeView()
            }
        }
    }
}

struct HomeSample_Previews: PreviewProvider {
    static var previews: some View {
        HomeSample()
    }
}
