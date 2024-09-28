//
//  SwiftRideMapViewRepresentable.swift
//  SwiftRide
//
//  Created by Anmol Ranjan on 28/09/24.
//

import SwiftUI
import MapKit

struct SwiftRideMapViewRepresentable: UIViewRepresentable {
    let mapView = MKMapView()
    
    func makeUIView(context: Context) -> some UIView {
        mapView.isRotateEnabled = false
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        
        return mapView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeCoordinator() -> MapCoordinator {
        return MapCoordinator(parent: self)
    }
}

extension SwiftRideMapViewRepresentable{
    class MapCoordinator: NSObject, MKMapViewDelegate{
        let parent: SwiftRideMapViewRepresentable
        
        init(parent: SwiftRideMapViewRepresentable) {
            self.parent = parent
            super.init()
        }
    }
}
