//
//  NavigationCell.swift
//  TiktokApp
//
//  Created by Abiodun Osagie on 19/04/2025.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack {
            Image(.myprofile)
                .resizable()
                .frame(width: 28, height: 28)
                .clipShape(Circle())
                
            HStack {
                Text("max.verstappen")
                    .font(.footnote)
                    .fontWeight(.semibold) +
                Text(" Liked one of your post. ")
                    .font(.footnote) +
                
                Text(" 3d")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            Spacer()
            Rectangle()
                .frame(width: 48, height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 6))
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotificationCell()
}
