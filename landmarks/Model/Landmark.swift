//
//  Landmark.swift
//  landmarks
//
//  Created by Lohan Marques on 12/01/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    var category: Category
    var locationCoordinate: CLLocationCoordinate2D { CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude) }
    var image: Image { Image(imageName) }
    var featuredImage: Image? { isFeatured ? Image(imageName + "_feature") : nil }
    private var imageName: String
    private var coordinates: Coordinates
    
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
}
