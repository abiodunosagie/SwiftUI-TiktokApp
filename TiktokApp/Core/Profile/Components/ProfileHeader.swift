//
//  ProfileHeader.swift
//  TiktokApp
//
//  Created by Abiodun Osagie on 19/04/2025.
//

import SwiftUI

struct ProfileHeader: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                // profile image
                Image(.myprofile)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                // username
                Text("@abiodun.osagie")
                    .font(.headline)
                    .fontWeight(.semibold)
            }
            
            // stats view
            HStack(spacing: 16) {
                UserStatView(value: "1", title: "Following")
                UserStatView(value: "875K", title: "Followers")
                UserStatView(value: "9.3M", title: "Likes")
            }
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                
            }
            .padding(.horizontal)
            
            Divider()

        }
    }
}

#Preview {
    ProfileHeader()
}


