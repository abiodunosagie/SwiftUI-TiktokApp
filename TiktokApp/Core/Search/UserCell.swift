//
//  UserCell.swift
//  TiktokApp
//
//  Created by Abiodun Osagie on 19/04/2025.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12) {
            Image(.myprofile)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray5))
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text("blessing_okonewa")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Text Name")
                    .font(.footnote)
                
            }
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
