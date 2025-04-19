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
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(viewModel.posts) { post in
                    FeedCell(post: post)
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
