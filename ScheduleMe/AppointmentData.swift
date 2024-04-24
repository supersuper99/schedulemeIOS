//
//  AppointmentData.swift
//  ScheduleMe
//
//  Created by Eric Andrews on 4/24/24.
//

import Foundation

struct Appointment {
    var id: UUID
    var date: Date
    var isBooked: Bool
}

class AppointmentData: ObservableObject {
    @Published var appointments: [Appointment] = []

    init() {
        // Initialize with some data
        let today = Date()
        let range = (0..<30).map { today.addingTimeInterval(Double($0 * 86400)) }
        appointments = range.map { date in
            Appointment(id: UUID(), date: date, isBooked: Bool.random())
        }
    }
    
    func toggleBooking(for appointment: Appointment) {
        if let index = appointments.firstIndex(where: { $0.id == appointment.id }) {
            appointments[index].isBooked.toggle()
        }
    }
}
