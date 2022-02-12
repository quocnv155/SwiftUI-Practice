//
//  SampleListView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct SampleListView: View {
    
    @State var fruits: [String] = ["Bananas 🍌🍌", "Apples 🍏🍏", "Peaches 🍑🍑"]
    
    var body: some View {
        List {
            Section(header: Text("Not a fruit")) {
                Text("Hello, World!")
            }
            
            Section(header: Text("Fruit")) {
                ForEach(fruits, id: \.self) { (fruit: String) in
                    Text(fruit)
                }
            }
        }.listStyle(InsetGroupedListStyle())
    }
}

struct SampleListView_Previews: PreviewProvider {
    static var previews: some View {
        SampleListView()
    }
}
