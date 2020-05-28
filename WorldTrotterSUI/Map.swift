//
//  Map.swift
//  WorldTrotterSUI
//
//  Created by Joachim Goennheimer on 28.05.20.
//  Copyright © 2020 Joachim Goennheimer. All rights reserved.
//

import SwiftUI
import MapKit

struct Map: UIViewRepresentable {
    typealias UIViewType = MKMapView
    func makeUIView(context: UIViewRepresentableContext<Map>) -> MKMapView {
        let mapView = MKMapView(frame: .zero)
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<Map>) {
    }
}

struct Map_Previews: PreviewProvider {
    static var previews: some View {
        Map()
    }
}
