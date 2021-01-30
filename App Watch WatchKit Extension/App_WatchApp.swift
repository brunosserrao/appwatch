//
//  App_WatchApp.swift
//  App Watch WatchKit Extension
//
//  Created by Bruno Serrão on 30/01/21.
//

import SwiftUI

@main
struct App_WatchApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
