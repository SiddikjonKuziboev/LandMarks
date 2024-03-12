//
//  ContentView.swift
//  Landmarks
//
//  Created by Siddikjon Kuziboev on 12/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
                    
            }
            .navigationTitle("Landmarks")
        } detail: {
          Text("Select a landmark")
        }
    }
}

#Preview {
    ContentView()
}
