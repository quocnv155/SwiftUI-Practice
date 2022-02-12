//
//  AngularGradientView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct AngularGradientView: View {
    let colors: [Color] = [.yellow, .red,.blue, .purple]
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(AngularGradient(gradient: Gradient(colors: colors), center: .center))
                .frame(width:200, height:200)
            Rectangle()
                .fill(AngularGradient(gradient: Gradient(colors: colors), center: .center,startAngle: .degrees(0), endAngle: .degrees(360 + 45)))
                .frame(width:200, height:200)
        }
    }
}

struct AngularGradientView_Previews: PreviewProvider {
    static var previews: some View {
        AngularGradientView()
    }
}
