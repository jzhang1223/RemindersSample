//
//  RemindersCollectionPage.swift
//  Reminders
//
//  Created by Justin Zhang on 11/16/19.
//  Copyright © 2019 Justin Zhang. All rights reserved.
//

import SwiftUI

struct RemindersCollectionPage: View {

    @EnvironmentObject private var userData: UserData
    @State private var isShowingModal = false

    var body: some View {
        // TODO: change to List so onDelete will work
        ScrollView {
            VStack {
                ForEach(userData.remindersCollection) { remindersList in
                    NavigationLink(destination: RemindersListView(remindersList: remindersList, color: .green)) {
                        RemindersCollectionLabel(label: remindersList.title, color: .green)
                            .frame(height: 88)
                            .cornerRadius(5)
                            .padding([.leading, .trailing], 10)

                    }
                }
                .onDelete(perform: deleteReminderCollection)
            }
            .navigationBarTitle("My Reminders")
            .navigationBarItems(leading: EditButton(),
                                trailing: Button(action: self.showReminderCollectionModal) {
                                    Image(systemName: "plus.square")
                                }
//                                .sheet(isPresented: $isShowingModal) {
//                                    AddRemindersCollectionView()
//            })
                                    .sheet(isPresented: $isShowingModal, onDismiss: addNewReminderCollection) {
                                        AddRemindersCollectionView(isShowingModal: self.$isShowingModal, title: "hi")
        })
        }
    }

    private func showReminderCollectionModal() {
        isShowingModal = true
    }

    private func addNewReminderCollection() {
        //TODO: prompt user to choose color and title
        userData.remindersCollection.append(RemindersList(title: "hi"))
        isShowingModal = false
    }

    private func deleteReminderCollection(at offsets: IndexSet) {
        userData.remindersCollection.remove(atOffsets: offsets)
    }
}

struct RemindersCollection_Previews: PreviewProvider {
    static var previews: some View {
        RemindersCollectionPage()
    }
}
