//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Siddikjon Kuziboev on 13/03/24.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? Color.yellow : Color.gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
