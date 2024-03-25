//
//  LandmarkCommands.swift
//  Landmarks
//
//  Created by Siddikjon Kuziboev on 25/03/24.
//

import SwiftUI

struct LandmarkCommands: Commands {
    @FocusedBinding(\.selectedLandmark) var selectedLandmark
    
    var body: some Commands {
        SidebarCommands()
        
        CommandMenu("Landmark") {
            Button("\(selectedLandmark?.isFavorite ?? false ? "Remove" : "Mark") as Favorite") {
                selectedLandmark?.isFavorite.toggle()
            }
            .keyboardShortcut("f", modifiers: [.shift, .option])
            .disabled(selectedLandmark == nil)
        }
    }
}

private struct SelectedLandmarkKey: FocusedValueKey {
    typealias Value = Binding<Landmark>
}

extension FocusedValues {
    
    var selectedLandmark: Binding<Landmark>? {
         get { self[SelectedLandmarkKey.self] }
         set { self[SelectedLandmarkKey.self] = newValue }
     }
}
