//
//  FilterCategory.swift
//  landmarks
//
//  Created by Lohan Marques on 19/01/21.
//

enum FilterCategory: String, CaseIterable, Identifiable {
    case all = "All"
    case lakes = "Lakes"
    case rivers = "Rivers"
    case mountains = "Mountains"

    var id: FilterCategory { self }
}
