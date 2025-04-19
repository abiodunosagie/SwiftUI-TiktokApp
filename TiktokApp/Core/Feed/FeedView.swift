//
//  FeedView.swift
//  TiktokApp
//
//  Created by Abiodun Osagie on 19/04/2025.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(0 ..< 10) { post in
                    Rectangle()
                        .containerRelativeFrame([.horizontal, .vertical])
                        .overlay {
                            Text("Post \(post)")
                                .foregroundStyle(.white)
                        }
                }
            }//: LAZYVSTACK
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
    }
}

#Preview {
    FeedView()
}
