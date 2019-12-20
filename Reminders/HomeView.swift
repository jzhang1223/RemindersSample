//
//  HomeView.swift
//  Reminders
//
//  Created by Justin Zhang on 11/16/19.
//  Copyright © 2019 Justin Zhang. All rights reserved.
//

import SwiftUI

struct HomeView: View {

    var body: some View {
        TabView {
            NavigationView {
                RemindersCollectionPage()
            }
            .tabItem {
                Image(systemName: "pencil.and.ellipsis.rectangle")
                Text("Reminders")
            }

            NavigationView {
                FacebookLoginView()
            }
                .tabItem {
                    Image(systemName: "link")
                    Text("Facebook Login")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
