//
//  ExploreView.swift
//  TiktokApp
//
//  Created by Abiodun Osagie on 19/04/2025.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach (0 ..< 20) {user in
                        UserCell()
                        
                    }
                }
            }//: SCROLLVIEW
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
       
    }
}

#Preview {
    ExploreView()
}
