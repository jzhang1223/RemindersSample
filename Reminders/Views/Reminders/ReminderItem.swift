//
//  ReminderItem.swift
//  Reminders
//
//  Created by Justin Zhang on 11/16/19.
//  Copyright © 2019 Justin Zhang. All rights reserved.
//

import SwiftUI

struct ReminderItem: View {

    @State var reminder: Reminder

    var body: some View {
        TextField("id: \(reminder.id)", text: $reminder.reminderText)
    }
}

//struct Reminder_Previews: PreviewProvider {
//    static var previews: some View {
//        Reminder()
//    }
//}
