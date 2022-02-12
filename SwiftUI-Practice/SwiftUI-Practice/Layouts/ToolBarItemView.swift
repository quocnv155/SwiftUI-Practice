//
//  ToolBarItemView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct ToolBarItemView: View {
    var body: some View {
        NavigationView {
            Text("Hello, World!")
                .toolbar {
                    ToolbarItem(id: "bananas") {
                        Image(systemName: "camera")
                            .foregroundColor(Color.green)
                    }
                }
        }
    }
}

struct ToolBarItemView_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarItemView()
    }
}
