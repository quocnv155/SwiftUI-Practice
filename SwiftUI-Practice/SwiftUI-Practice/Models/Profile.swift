//
//  Profile.swift
//  Sample
//
//  Created by Dinh Van Vu on 03/12/2021.
//

import Foundation

class UserDetails: ObservableObject {
    @Published var age = 29
    @Published var firstName = "Quoc"
    @Published var lastName = "Nguyen"
}
