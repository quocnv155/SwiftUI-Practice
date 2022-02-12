//
//  SampleImageBackgroundView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 11/02/2022.
//

import SwiftUI

struct SampleImageBackgroundView: View {
    var body: some View {
        HStack {
            Text("house")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.white)
                .background(
                    Image("house")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                )
        }
    }
}

struct SampleImageBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        SampleImageBackgroundView()
    }
}
