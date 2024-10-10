//
//  SwiftRideApp.swift
//  SwiftRide
//
//  Created by Anmol Ranjan on 28/09/24.
//

import SwiftUI

@main
struct SwiftRideApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
