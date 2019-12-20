//
//  Reminder.swift
//  Reminders
//
//  Created by Justin Zhang on 11/16/19.
//  Copyright © 2019 Justin Zhang. All rights reserved.
//

struct Reminder: Hashable, Codable, Identifiable {
    var id: Int
    var reminderText: String
    public static var counter: Int = 0

    public init(reminderText: String) {
        self.reminderText = reminderText
        id = Reminder.counter + 1
        Reminder.counter += 1
    }
}
