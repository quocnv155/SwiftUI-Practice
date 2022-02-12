//
//  SampleRotatedShape.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct SampleRotatedShape: View {
    var body: some View {
        let shape = Rectangle().scale(0.5)
        let angle = Angle(degrees: 30)
        let rotatedShape = RotatedShape(shape: shape, angle: angle)
        
        return rotatedShape
            .border(Color.orange)
            .padding()
    }
}

struct SampleRotatedShape_Previews: PreviewProvider {
    static var previews: some View {
        SampleRotatedShape()
    }
}
