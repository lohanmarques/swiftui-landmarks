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
        let mainWindow = WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        
        #if os(macOS)
            mainWindow
                .commands {
                    LandmarkCommands()
                }
        #else
        mainWindow
        #endif
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
        
        #if os(macOS)
        Settings {
            LandmarkSettings()
        }
        #endif
    }
}
