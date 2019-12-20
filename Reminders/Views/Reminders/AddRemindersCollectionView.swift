//
//  AddRemindersCollectionView.swift
//  Reminders
//
//  Created by Justin Zhang on 11/25/19.
//  Copyright © 2019 Justin Zhang. All rights reserved.
//

import SwiftUI

struct AddRemindersCollectionView: View {

    @Binding var isShowingModal: Bool
    @State var title = ""
    var color = Color.white

    var body: some View {

        ZStack(alignment: .center) {
            RoundedRectangle(cornerRadius: 10).border(Color.orange).foregroundColor(.gray)
            VStack(alignment: .center) {
                HStack {
                    Rectangle().foregroundColor(.red)
                    Rectangle().foregroundColor(.green)
                    Rectangle().foregroundColor(.blue)
                }
                TextField("hi", text: $title)
            }
        }.frame(height: 200)
    }
}

//struct AddRemindersCollectionView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddRemindersCollectionView()
//    }
//}
