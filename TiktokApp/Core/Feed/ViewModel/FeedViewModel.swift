//
//  FeedViewModel.swift
//  TiktokApp
//
//  Created by Abiodun Osagie on 19/04/2025.
//

import Foundation

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    // List of verified, royalty-free vertical (9:16) video URLs from Mixkit
    let videoUrls = [
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4", // LGBT man with rainbow paint
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4", // LGBTQ boy with flower
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4", // Couple sharing headphones
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4", // Couple kissing in park
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4", // Woman with silver makeup
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4", // Woman eating ramen
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4", // Programming code screen
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4" // Kid crafting letter
    ]
    
    init() {
        fetchPosts()
    }
    
    func fetchPosts() {
        self.posts = videoUrls.map {
            Post(id: NSUUID().uuidString, videoUrl: $0)
        }
    }
}
