//
//  RemindersListView.swift
//  Reminders
//
//  Created by Justin Zhang on 11/16/19.
//  Copyright © 2019 Justin Zhang. All rights reserved.
//

import SwiftUI

struct RemindersListView: View {

    @EnvironmentObject private var userData: UserData
//    @State var remindersList: RemindersList

    var remindersList: RemindersList
    let color: Color

    var remindersListIndex: Int {
        userData.remindersCollection.firstIndex(where: { $0.id == remindersList.id })!
    }

    var body: some View {
        List {
            ForEach(remindersList.reminders) { item in
                ReminderItem(reminder: item)
//                    .gesture(DragGesture(minimumDistance: 2, coordinateSpace: .global)
//                        .onChanged())
            }
            .onDelete(perform: deleteReminder)

            Button(action: addNewReminder) {
                HStack {
                    Image(systemName: "plus.square")
                    Text("Add a new reminder")
                }
            }
        .foregroundColor(color)
        }
        .navigationBarTitle(remindersList.title)
        .navigationBarItems(trailing: EditButton())

    }

    private func addNewReminder() {
//        remindersList.reminders.append(Reminder(reminderText: ""))
//        $userData.remindersCollection.remindersList.append(Reminder(reminderText: ""))
        $userData.remindersCollection[remindersListIndex].reminders.wrappedValue.append(Reminder(reminderText: ""))

    }

    private func deleteReminder(at offsets: IndexSet) {
//        remindersList.reminders.remove(atOffsets: offsets)
    }
}

//struct RemindersList_Previews: PreviewProvider {
//    static var previews: some View {
//        RemindersList()
//    }
//}
