//
//  GeometryReaderView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        GeometryReader { (proxy: GeometryProxy) in
            Color.green
                .frame(
                    width: proxy.size.width / 2,
                    height: proxy.size.height / 2
                ).overlay(
                    GeometryReader { (proxy: GeometryProxy) in
                         Color.red
                            .frame(
                                width: proxy.size.width / 2,
                                height: proxy.size.height / 2
                            )
                    }
                )
        }
    }
}

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
    }
}
