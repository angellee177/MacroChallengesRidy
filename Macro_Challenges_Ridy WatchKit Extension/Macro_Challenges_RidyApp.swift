//
//  Macro_Challenges_RidyApp.swift
//  Macro_Challenges_Ridy WatchKit Extension
//
//  Created by Angel Ria Purnamasari on 10/11/22.
//

import SwiftUI

@main
struct Macro_Challenges_RidyApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
