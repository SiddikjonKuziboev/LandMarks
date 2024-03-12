//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Siddikjon Kuziboev on 12/03/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
