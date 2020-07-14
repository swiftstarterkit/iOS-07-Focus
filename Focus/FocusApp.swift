//
//  FocusApp.swift
//  Focus
//
//  Created by Pao Yu on 2020-07-13.
//

import SwiftUI

@main
struct FocusApp: App {
    
    @StateObject var timeRobot: TimeRobot = TimeRobot()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(timeRobot)
        }
    }
}
