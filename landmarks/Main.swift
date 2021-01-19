//
//  landmarksApp.swift
//  landmarks
//
//  Created by Lohan Marques on 05/01/21.
//

import SwiftUI

@main
struct Main: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
    }
}
