//
//  SampleEmptyView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 11/02/2022.
//

import SwiftUI

struct SampleEmptyView: View {
    
    @State var isEmpty = true
    
    var body: some View {
        Group {
            VStack {
                if isEmpty {
                    Text("Hello world!")
                } else {
                    EmptyView()
                }
                Button("Tap") {
                    isEmpty = !isEmpty
                }
            }
        }
    }
}

struct SampleEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        SampleEmptyView()
    }
}
