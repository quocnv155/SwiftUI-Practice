//
//  MenuViewModel.swift
//  NavigationDrawer
//
//  Created by QuocNV on 13/02/2023.
//

import SwiftUI

class MenuViewModel: ObservableObject {
    // Default
    @Published var selectedMenu = "Catalogue"
    // show
    @Published var showDrawer = false
}
