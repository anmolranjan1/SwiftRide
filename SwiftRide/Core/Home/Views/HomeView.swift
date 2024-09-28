//
//  HomeView.swift
//  SwiftRide
//
//  Created by Anmol Ranjan on 28/09/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack(alignment: .top) {
            SwiftRideMapViewRepresentable()
                .ignoresSafeArea()
            
            LocationSearchActivationView()
                .padding(.top, 72)
            
            MapViewActionButton()
                .padding(.leading)
                .padding(.top, 4)
                
        }
    }
}

#Preview {
    HomeView()
}
