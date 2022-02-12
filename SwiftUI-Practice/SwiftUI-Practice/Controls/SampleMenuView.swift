//
//  SampleMenuView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 12/02/2022.
//

import SwiftUI

struct SampleMenuView: View {
    var body: some View {
        Menu("Actions") {
            Button("Duplicate") {
                print("Duplicate")
            }
            Button("Delete...") {
                print("Delete...")
            }
            Menu("Copy") {
                Button("Copy") {
                    print("Copy")
                }
                Button("Copy Formatted") {
                    print("Copy Formatted")
                }
            }
        }
    }
}

struct SampleMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SampleMenuView()
    }
}
