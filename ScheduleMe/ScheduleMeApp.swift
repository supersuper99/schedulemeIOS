//
//  ScheduleMeApp.swift
//  ScheduleMe
//
//  Created by Eric Andrews on 4/24/24.
//

import SwiftUI

@main
struct ScheduleMeApp: App {
    var body: some Scene {
            WindowGroup {
                ContentView()
                    .environmentObject(AppointmentData())
            }
        }
}
