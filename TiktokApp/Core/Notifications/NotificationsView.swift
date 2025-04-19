//
//  NavigationView.swift
//  TiktokApp
//
//  Created by Abiodun Osagie on 19/04/2025.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 24) {
                    ForEach(0 ..< 10) { Notification in
                        NotificationCell()
                        
                    }
                }
            }
            .navigationTitle("Notifications")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    NotificationsView()
}
