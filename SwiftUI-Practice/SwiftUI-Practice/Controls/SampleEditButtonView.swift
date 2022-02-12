//
//  SampleEditButtonView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 11/02/2022.
//

import SwiftUI

struct SampleEditButtonView: View {
    
    @State var fruits = ["😀", "😂", "🤣"]
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit)
                }
                .onDelete { offset in
                    fruits.remove(atOffsets: offset)
                }
            }.toolbar {
                EditButton()
            }
        }
    }
}

struct SampleEditButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SampleEditButtonView()
    }
}
