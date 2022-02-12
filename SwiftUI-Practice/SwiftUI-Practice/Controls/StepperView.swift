//
//  StepperView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 11/02/2022.
//

import SwiftUI

struct StepperView: View {
    @State var quantity = 0.0
    
    var body: some View {
        VStack {
            Stepper(
                "Quantity: \(quantity)",
                value: $quantity,
                in: 0 ... 10,
                step: 0.5
            )
        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
