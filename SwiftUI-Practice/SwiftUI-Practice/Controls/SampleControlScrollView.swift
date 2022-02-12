//
//  SampleControlScrollView.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 11/02/2022.
//

import SwiftUI

struct SampleControlScrollView: View {
    var weathers = Weather.dummyData()
    
    var body: some View {
        ScrollView {
            ForEach(weathers, id: \.city) { weather in
                WeatherRow(weather: weather)
            }
        }
    }
}

struct SampleControlScrollView_Previews: PreviewProvider {
    static var previews: some View {
        SampleControlScrollView()
    }
}
