//
//  AdminView.swift
//  ScheduleMe
//
//  Created by Eric Andrews on 4/24/24.
//

import SwiftUI

struct AdminView: View {
    @EnvironmentObject var data: AppointmentData

    var body: some View {
        List(data.appointments, id: \.id) { appointment in
            Button("Toggle Booking") {
                data.toggleBooking(for: appointment)
            }
            .foregroundColor(appointment.isBooked ? .red : .blue)
        }
        .navigationTitle("Admin Schedule Editor")
    }
}
