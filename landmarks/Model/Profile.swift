//
//  Profile.swift
//  landmarks
//
//  Created by Lohan Marques on 15/01/21.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications: Bool = true
    var seasonalPhoto: Season = .winter
    var goalDate: Date = Date()
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { self.rawValue }
    }
    
    static let `default` = Profile(username: "g_kumar")
}
