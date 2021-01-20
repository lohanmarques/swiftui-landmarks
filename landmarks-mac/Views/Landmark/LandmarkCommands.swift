//
//  LandmarkCommands.swift
//  landmarks
//
//  Created by Lohan Marques on 19/01/21.
//

import SwiftUI

struct LandmarkCommands: Commands {
    
    private struct MenuContent: View {
        @FocusedBinding(\.selectedLandmark) var selectedLandmark
        
        var body: some View {
            Button("\(selectedLandmark?.isFavorite == true ? "Remove": "Mark") as Favorite") {
                selectedLandmark?.isFavorite.toggle()
            }
            .disabled(selectedLandmark == nil)
        }
    }
    
    var body: some Commands {
        SidebarCommands()
        CommandMenu("Landmark") {
            MenuContent()
        }
    }
}

private struct SelectLandmarkKey: FocusedValueKey {
    typealias Value = Binding<Landmark>
}

extension FocusedValues {
    var selectedLandmark: Binding<Landmark>? {
        get { self[SelectLandmarkKey.self] }
        set { self[SelectLandmarkKey.self] = newValue }
    }
}
