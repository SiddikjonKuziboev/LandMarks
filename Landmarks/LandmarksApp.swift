//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Siddikjon Kuziboev on 12/03/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
