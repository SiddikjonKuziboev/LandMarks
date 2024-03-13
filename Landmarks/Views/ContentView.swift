//
//  ContentView.swift
//  Landmarks
//
//  Created by Siddikjon Kuziboev on 12/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
       
}
