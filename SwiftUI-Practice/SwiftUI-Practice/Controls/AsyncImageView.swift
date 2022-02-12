//
//  AsyncImageView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct AsyncImageView: View {
    var body: some View {
        if #available(iOS 15.0, *) {
            AsyncImage(url: URL(string: "https://is2-ssl.mzstatic.com/image/thumb/Music113/v4/3d/6d/d0/3d6dd00b-b480-740f-bc6e-e2ca78ff918e/190296882920.jpg/200x200bb.png")) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 200, height: 200)
        } else {
            // Fallback on earlier versions
        }
    }
}

struct AsyncImageView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageView()
    }
}
