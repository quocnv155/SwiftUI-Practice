//
//  DrapInfoView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct DrapInfoView: View {
    @State var text: String = "🍌🍌"

    var body: some View {
        HStack {
            // Text to drag
            Text(text)
                .font(.title)
                .onDrag { NSItemProvider(object: self.text as NSString) }

            // Area to drop
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 150, height: 150)
                .onDrop(of: ["text"], delegate: MyDropDelegate(text: $text))
        }
    }
}
struct MyDropDelegate: DropDelegate {
    @Binding var text: String

    func performDrop(info: DropInfo) -> Bool {
        self.text = "Dropped My Bananas 🍌🍌!"
        return true
    }
}
struct DrapInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DrapInfoView()
    }
}
