//
//  SampleOutlineGroupView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 11/02/2022.
//

import SwiftUI

struct SampleOutlineGroupView: View {
    var body: some View {
        OutlineGroup(data, children: \.children) { item in
            Text("\(item.description)")
        }
    }
}

struct SampleOutlineGroupView_Previews: PreviewProvider {
    static var previews: some View {
        SampleOutlineGroupView()
    }
}
