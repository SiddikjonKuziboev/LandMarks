//
//  LandMarkRow.swift
//  Landmarks
//
//  Created by Siddikjon Kuziboev on 12/03/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)

            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(Color.yellow)
            }
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
       return LandmarkRow(landmark: landmarks[0])
}

#Preview {
    let landmarks = ModelData().landmarks
    return LandmarkRow(landmark: landmarks[1])
}