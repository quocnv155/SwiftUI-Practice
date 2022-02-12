//
//  AlertView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct AlertView: View {
    @State private var showAlert = false
    
    var body: some View {
        Button("Tap to view alert") {
            showAlert = true
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("An important title!"),
                message: Text("A message that adds additional context on the alert.")
            )
        }
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
