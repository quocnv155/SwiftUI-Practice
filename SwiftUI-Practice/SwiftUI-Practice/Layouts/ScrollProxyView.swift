//
//  ScrollProxyView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct ScrollProxyView: View {
    let center = UnitPoint(x: 0.5, y: 0.8)
    var body: some View {
        ScrollView {
            ScrollViewReader { (proxy: ScrollViewProxy) in
                Button("Jump to #66") {
                    withAnimation(.easeInOut(duration: 60)) {
                        proxy.scrollTo(66, anchor: center)
                    }
                }
                
                ForEach(1..<101) { number in
                    Text("Item #\(number)")
                        .id(number)
                }
            }
        }
    }
}

struct ScrollProxyView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollProxyView()
    }
}
