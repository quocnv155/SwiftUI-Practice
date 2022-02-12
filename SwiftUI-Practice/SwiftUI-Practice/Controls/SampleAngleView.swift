//
//  SampleAngleView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct SampleAngleView: View {
    var body: some View {
        VStack(spacing: 50) {
            Rectangle()
                .frame(width: 100, height: 100)
                .rotationEffect(Angle(degrees: 15))
                .border(Color.orange)
            Rectangle()
                .frame(width: 100, height: 100)
                .rotationEffect(.degrees(15))
                .border(Color.orange)
        }
    }
}

struct SampleAngleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleAngleView()
    }
}
