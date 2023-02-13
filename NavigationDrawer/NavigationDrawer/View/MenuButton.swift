//
//  MenuButton.swift
//  NavigationDrawer
//
//  Created by QuocNV on 13/02/2023.
//

import SwiftUI

struct MenuButton: View {
    var name: String
    var image: String
    @Binding var selecetedMenu: String

    var animation: Namespace.ID
    var body: some View {
        Button(action: {
            withAnimation(.spring()) {
                selecetedMenu = name
            }

        }, label: {
            HStack(spacing: 15) {
                Image(systemName: image)
                    .font(.title2)
                    .foregroundColor(selecetedMenu == name ? .black : .white)

                Text(name)
                    .foregroundColor(selecetedMenu == name ? .black : .white)
            }
            .padding(.horizontal)
            .padding(.vertical, 12)
            .frame(width: 200, alignment: .leading)
            // smooth slide animation
            .background(
                ZStack {
                    if selecetedMenu == name {
                        Color.white.cornerRadius(10)
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    } else {
                        Color.clear
                    }
                }

            )
        })
    }
}
