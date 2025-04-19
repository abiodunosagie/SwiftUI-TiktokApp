//
//  MainTab.swift
//  TiktokApp
//
//  Created by Abiodun Osagie on 19/04/2025.
//

import SwiftUI

struct MainTab: View {
    var body: some View {
        TabView {
            Text("Feed")
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
            
            Text("Explore")
                .tabItem {
                    VStack {
                        Image(systemName: "person.2")
                        Text("Friends")
                    }
                }
            
            Text("Upload Post")
                .tabItem {
                    VStack {
                        Image(systemName: "plus")
                            .font(.system(size: 30,weight: .bold))
                    }
                }
            
            Text("Notifications")
                .tabItem {
                    VStack {
                        Image(systemName: "heart")
                        Text("Home")
                    }
                }
            
            Text("Profile")
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Profile")
                    }
                }
        }
    }
}

#Preview {
    MainTab()
}
