//
//  UserStateView.swift
//  TiktokApp
//
//  Created by Abiodun Osagie on 19/04/2025.
//

import SwiftUI


struct UserStatView: View {
    let value: String
    let title: String
    var body: some View {
        VStack {
            Text(value)
                .font(.caption)
                .fontWeight(.bold)
            
            Text(title)
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .frame(width: 80, alignment: .center)
    }
}

#Preview {
    UserStatView(value: "5", title: "Followers")
}
