//
//  Search.swift
//  AppleMusicAnimationsApp
//
//  Created by QuocNV on 10/02/2023.
//

import SwiftUI

struct Search: View {
    @State var search = ""
    var columns = Array(repeating: GridItem(.flexible(), spacing: 20)
                        , count: 2)
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
