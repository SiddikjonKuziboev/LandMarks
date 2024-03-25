//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Siddikjon Kuziboev on 25/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       LandmarkList()
            .frame(width: 700, height: 300)
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
