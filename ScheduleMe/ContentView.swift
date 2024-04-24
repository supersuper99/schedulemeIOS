//
//  ContentView.swift
//  ScheduleMe
//
//  Created by Eric Andrews on 4/24/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CalendarView()
                .tabItem {
                    Label("Calendar", systemImage: "calendar")
                }
            AdminView()
                .tabItem {
                    Label("Admin", systemImage: "person.crop.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(AppointmentData())
    }
}
