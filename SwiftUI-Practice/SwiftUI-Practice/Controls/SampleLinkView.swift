//
//  SampleLinkView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct SampleLinkView: View {
    
    let urlString = "https://drjoy.vn/"
    
    var body: some View {
        Group {
            if let url = URL(string: urlString) {
                Link(destination: url) {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.pink)
                        .frame(width: 200, height: 200)
                        .padding()
                }
            }
        }
    }
}

struct SampleLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SampleLinkView()
    }
}
