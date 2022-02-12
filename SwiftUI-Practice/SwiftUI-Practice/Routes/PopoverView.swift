//
//  PopoverView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct PopoverView: View {
    @State private var showPopover = false
    
    var body: some View {
        Button("Open sesame ") { showPopover = true }
        .popover(isPresented: $showPopover,
                 attachmentAnchor: .rect(.bounds),
                 arrowEdge: .leading,
                 content: { ExamplePopover() })
    }
}
struct ExamplePopover: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button("CLOSE 📪") {
            presentationMode.wrappedValue.dismiss()
        }
    }
}
struct PopoverView_Previews: PreviewProvider {
    static var previews: some View {
        PopoverView()
    }
}
