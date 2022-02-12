//
//  ImageView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 11/02/2022.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image("deposite")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200.0, height: 200.0)
                .foregroundColor(.red)
            Image("freaking")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200.0, height: 200.0)
                .foregroundColor(.red)
            Image("happy")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200.0, height: 200.0)
                .foregroundColor(.red)
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
