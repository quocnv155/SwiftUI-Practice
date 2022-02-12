//
//  ActionSheetView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct ActionSheetView: View {
    @State private var showActionSheet = false
    
    var body: some View {
        Button("Eat 🍌") {
            showActionSheet = true
        }
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(
                title: Text("Food alert!"),
                message: Text("You have made a selection"),
                buttons: [
                    .cancel(),
                    .destructive(Text("Change to 🍑")) { /* override */ },
                    .default(Text("Confirm")) { /* confirm */ }
                ]
            )
        }
    }
}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
