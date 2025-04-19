//
//  CurrentUserProfile.swift
//  TiktokApp
//
//  Created by Abiodun Osagie on 19/04/2025.
//

import SwiftUI

struct CurrentUserProfile: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 2) {
                    // profile header
                    ProfileHeader()
                    // post grid view
                    PostGridView()
                }
                .padding(.top)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CurrentUserProfile()
}
