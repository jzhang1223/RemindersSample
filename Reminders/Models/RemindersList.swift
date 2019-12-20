//
//  RemindersList.swift
//  Reminders
//
//  Created by Justin Zhang on 11/16/19.
//  Copyright © 2019 Justin Zhang. All rights reserved.
//

struct RemindersList: Hashable, Codable, Identifiable {
    var id: Int
    var reminders: [Reminder] = []
    var title: String

    public static var counter: Int = 0

    public init(title: String = "RemindersList String Title") {//reminderText: String) {
        self.title = title
        id = RemindersList.counter + 1
        RemindersList.counter += 1
    }

//    public mutating func addReminder(reminder: Reminder) {
//        self.reminders.append(reminder)
//    }
}
