//
//  CalenderView.swift
//  ScheduleMe
//
//  Created by Eric Andrews on 4/24/24.
//

import SwiftUI

struct CalendarView: View {
    @EnvironmentObject var data: AppointmentData

    var body: some View {
        NavigationView {
            List(data.appointments, id: \.id) { appointment in
                NavigationLink(destination: AppointmentDetailView(appointment: appointment)) {
                    Text("\(appointment.date, formatter: itemFormatter)")
                        .foregroundColor(appointment.isBooked ? .red : .blue)
                }
            }
            .navigationTitle("Tattoo Appointments")
        }
    }
}

let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    return formatter
}()
