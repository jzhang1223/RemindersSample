//
//  UserData.swift
//  Reminders
//
//  Created by Justin Zhang on 11/16/19.
//  Copyright © 2019 Justin Zhang. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: ObservableObject {
//    @Published var showFavoritesOnly = false
    
//    @Published var reminders = [
//        Reminder(reminderText: "first"),
//        Reminder(reminderText: "second"),
//        Reminder(reminderText: "third"),
//        Reminder(reminderText: "fourth"),
//    ]

    @Published var remindersCollection = [
        RemindersList()
    ]
}
