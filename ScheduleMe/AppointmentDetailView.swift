//
//  AppointmentDetailView.swift
//  ScheduleMe
//
//  Created by Eric Andrews on 4/24/24.
//

import SwiftUI

struct AppointmentDetailView: View {
    var appointment: Appointment
    @EnvironmentObject var data: AppointmentData

    var body: some View {
        VStack {
            Text("Date: \(appointment.date, formatter: itemFormatter)")
            Button(appointment.isBooked ? "Cancel Appointment" : "Book Appointment") {
                data.toggleBooking(for: appointment)
            }
        }
        .navigationTitle("Appointment Details")
        .padding()
    }
}
