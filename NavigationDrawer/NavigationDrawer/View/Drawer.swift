//
//  Drawer.swift
//  NavigationDrawer
//
//  Created by QuocNV on 13/02/2023.
//

import SwiftUI

struct Drawer: View {
    @EnvironmentObject var menuData: MenuViewModel

    // Animation..
    var animation: Namespace.ID
    var body: some View {
        VStack {
            HStack {
                Image("p1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 65, height: 65)
                    .clipShape(Circle())
                Spacer()
                // close button
                if menuData.showDrawer {
                    DrawerCloseButton(animation: animation)
                }
            }
            .padding()

            VStack(alignment: .leading, spacing: 10, content: {
                Text("Hello")
                    .font(.title2)
                Text("QuocNV")
                    .font(.title)
                    .fontWeight(.heavy)
            })
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            .padding(.top, 5)

            // Menu buttons
            VStack(spacing: 18) {
                MenuButton(name: "Catalogue", image: "envelope.fill", selecetedMenu: $menuData.selectedMenu, animation: animation)
                MenuButton(name: "Your Cart", image: "bag.fill", selecetedMenu: $menuData.selectedMenu, animation: animation)
                MenuButton(name: "Favourites", image: "suit.heart.fill", selecetedMenu: $menuData.selectedMenu, animation: animation)
                MenuButton(name: "Your Orders", image: "list.triangle", selecetedMenu: $menuData.selectedMenu, animation: animation)
            }
            .frame(width: 250, alignment: .leading)
            .padding(.leading)
            .padding(.top, 30)

            Divider()
                .background(Color.white)
                .padding(.top, 30)
                .padding(.horizontal, 25)
            Spacer()

            MenuButton(name: "Sign Out", image: "rectangle.righthalf.inset.fill.arrow.right", selecetedMenu: .constant(""), animation: animation)
                .padding(.bottom)
        }
        .frame(width: 250)
        .background(
            Color("drawerBG")
                .ignoresSafeArea(.all, edges: .vertical)
        )
    }
}
// Close button

struct DrawerCloseButton: View {
    @EnvironmentObject var menuData: MenuViewModel

    var animation: Namespace.ID
    var body: some View {
        Button(action: {
            withAnimation(.easeInOut) {
                menuData.showDrawer.toggle()
            }
        }) {

            VStack(spacing: 5) {
                Capsule()
                    .fill(menuData.showDrawer ? Color.white : Color.primary)
                    .frame(width: 35, height: 3)
                    .rotationEffect(.init(degrees: menuData.showDrawer ? -50 : 0))
                    .offset(x: menuData.showDrawer ? 2 : 0, y: menuData.showDrawer ? 9 : 0)
                VStack(spacing: 5) {
                    Capsule()
                        .fill(menuData.showDrawer ? Color.white : Color.primary)
                        .frame(width: 35, height: 3)
                    Capsule()
                        .fill(menuData.showDrawer ? Color.white : Color.primary)
                        .frame(width: 35, height: 3)
                    //moving this to view hide
                        .offset(y: menuData.showDrawer ? -8 : 0)
                }
                // rotating like x mark
                .rotationEffect(.init(degrees: menuData.showDrawer ? 50 : 0))
            }
        }
        .scaleEffect(0.8)
        .matchedGeometryEffect(id: "MENU_BUTTON", in: animation)
    }
}
