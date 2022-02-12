//
//  SheetView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct SheetView: View {
    @State private var showSheet = false
    
    var body: some View {
        Button("Open sesame 📬") {
            showSheet = true
        }
        .sheet(isPresented: $showSheet,
               onDismiss: { print("dismissed!") },
               content: { ExampleSheet() })
    }
}

struct ExampleSheet: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button("CLOSE 📪") {
            presentationMode.wrappedValue.dismiss()
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
