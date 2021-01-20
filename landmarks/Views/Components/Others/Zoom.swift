//
//  Zoom.swift
//  landmarks
//
//  Created by Lohan Marques on 19/01/21.
//

import Foundation

enum Zoom: String, CaseIterable, Identifiable {
    case near = "Near"
    case medium = "Medium"
    case far = "Far"

    var id: Zoom {
        return self
    }
}
