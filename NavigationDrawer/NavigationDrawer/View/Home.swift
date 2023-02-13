//
//  Home.swift
//  NavigationDrawer
//
//  Created by QuocNV on 13/02/2023.
//

import SwiftUI

struct Home: View {
    // Hidding tab bar...
    init() {
        UITabBar.appearance().isHidden = true
    }
    @StateObject var menuData = MenuViewModel()
    @Namespace var animation

    var body: some View {
        HStack(spacing: 0) {
            // Drawer and Main view

            // Drawer
            Drawer(animation: animation)
            // Main view...

            // Main View
            TabView(selection: $menuData.selectedMenu) {

                Catalogue()
                    .tag("Catalogue")

                Orders()
                    .tag("Your Orders")

                Favourites()
                    .tag("Favourites")

                Cart()
                    .tag("Your Cart")

            }
            .frame(width: UIScreen.main.bounds.width)
        }
        // Max frame
        .frame(width: UIScreen.main.bounds.width)
        // moving view
        // 250/2 => 125
        .offset(x: menuData.showDrawer ? 125 : -125)
        .overlay(
            ZStack {
                if !menuData.showDrawer {
                    DrawerCloseButton(animation: animation)
                        .padding()
                }
            },
            alignment: .topLeading

        )
        // Setting as enviroment object...
        // For avoiding re-declaration.
        .environmentObject(menuData)

    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
//            .previewDevice("iPhone 8")
            .previewDevice("iPhone X")

    }
}
