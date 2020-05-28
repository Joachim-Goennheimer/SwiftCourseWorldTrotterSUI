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
    @Binding var mapType: Int
    typealias UIViewType = MKMapView
    func makeUIView(context: UIViewRepresentableContext<Map>) -> MKMapView {
        let mapView = MKMapView(frame: .zero)
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<Map>) {
        switch mapType {
        case 0:
            uiView.mapType = .standard
        case 1:
            uiView.mapType = .hybrid
        case 2:
            uiView.mapType = .satellite
        default:
            print("unknown mapType: \(mapType)")
        }
    }
}

struct Map_Previews: PreviewProvider {
    static var previews: some View {
        Map(mapType: .constant(0))
    }
}
