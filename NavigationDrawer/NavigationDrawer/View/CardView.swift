//
//  CardView.swift
//  NavigationDrawer
//
//  Created by QuocNV on 13/02/2023.
//

import SwiftUI

struct CardView: View {
    var image: String
    var title: String

    var body: some View {
        HStack(spacing: 15) {

            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)

            VStack(alignment: .leading, spacing: 8, content: {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)

                Text("Great Music with Best Price")
                    .font(.caption)
                    .foregroundColor(.gray)
            })
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

