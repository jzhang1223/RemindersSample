//
//  RemindersCollectionLabel.swift
//  Reminders
//
//  Created by Justin Zhang on 11/16/19.
//  Copyright © 2019 Justin Zhang. All rights reserved.
//

import SwiftUI

struct RemindersCollectionLabel: View {

    @State public var label: String
    @State public var color: Color

    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [color, .white]),
                                     startPoint: .top,
                                     endPoint: .bottom))
            Text(label)
                .font(.title)
                .foregroundColor(.black)

        }
    }
}

//struct RemindersCollectionLabel_Previews: PreviewProvider {
//    static var previews: some View {
//        RemindersCollectionLabel()
//    }
//}
