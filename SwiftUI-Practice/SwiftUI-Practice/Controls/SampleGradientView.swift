//
//  SampleGradientView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct SampleGradientView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(LinearGradient(
                gradient: Gradient(colors: [.green, .blue, .purple]),
                startPoint: .leading,
                endPoint: .trailing))
            .padding()
    }
}

struct SampleGradientView_Previews: PreviewProvider {
    static var previews: some View {
        SampleGradientView()
    }
}
