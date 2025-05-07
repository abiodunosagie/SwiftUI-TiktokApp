//
//  FeedView.swift
//  TiktokApp
//
//  Created by Abiodun Osagie on 19/04/2025.
//

import SwiftUI

struct FeedView: View {
    // MARK: - PROPERTIES
    @StateObject var viewModel = FeedViewModel()
    @State private var currentPostId: String? = nil
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(viewModel.posts) { post in
                    FeedCell(post: post, isCurrentlyVisible: currentPostId == post.id)
                        .containerRelativeFrame([.horizontal, .vertical])
                        .id(post.id)
                }
            }//: LAZYVSTACK
            .scrollTargetLayout()
        }
        .scrollPosition(id: $currentPostId)
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .onAppear {
            // Make sure the first post ID is set as current when the view appears
            if let firstPostId = viewModel.posts.first?.id {
                currentPostId = firstPostId
            }
        }
    }
}

#Preview {
    FeedView()
}
