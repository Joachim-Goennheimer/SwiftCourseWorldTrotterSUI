//
//  MapView.swift
//  WorldTrotterSUI
//
//  Created by Joachim Goennheimer on 28.05.20.
//  Copyright © 2020 Joachim Goennheimer. All rights reserved.
//

import SwiftUI

struct MapView: View {
    @State private var selectedMapType = 0
    var body: some View {
        Map(mapType: $selectedMapType)
            .overlay(
                Picker("", selection: $selectedMapType) {
                    Text("Standard").tag(0)
                    Text("Hybrid").tag(1)
                    Text("Satellite").tag(2)
                }
            .pickerStyle(SegmentedPickerStyle())
            .padding(),
            alignment: .top
        
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
