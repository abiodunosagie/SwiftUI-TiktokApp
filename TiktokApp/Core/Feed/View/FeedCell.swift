//
//  FeedCell.swift
//  TiktokApp
//
//  Created by Abiodun Osagie on 19/04/2025.
//

import SwiftUI
import AVKit

struct FeedCell: View {
    // MARK: - PROPERTIES
    let post: Post
    let isCurrentlyVisible: Bool
    
    @State private var player: AVPlayer?
    @State private var isPaused: Bool = false
    
    var body: some View {
        ZStack {
            // Video player
            ZStack {
                Color.black
                
                if let player = player {
                    VideoPlayer(player: player)
                        .disabled(true) // Disable player controls
                }
                
                // Play/pause indicator
                if isPaused {
                    Image(systemName: "play.fill")
                        .font(.system(size: 70))
                        .foregroundColor(.white.opacity(0.7))
                }
            }
            .containerRelativeFrame([.horizontal, .vertical])
            .contentShape(Rectangle()) // Ensure the entire area is tappable
            .onTapGesture {
                togglePlayPause()
            }
            
            // Overlay content
            VStack {
                Spacer()
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("abiodunosagie1")
                            .fontWeight(.semibold)
                        Text("Rocket ship prepared for takeoff!")
                    }//: Vstack
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    Spacer()
                    VStack(spacing: 28){
                        Circle()
                            .frame(width: 48, height: 48)
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundStyle(.white)
                                Text("27K")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .fontWeight(.semibold)
                            }
                            
                        }
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundStyle(.white)
                                Text("27K")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .fontWeight(.semibold)
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "bookmark.fill")
                                    .resizable()
                                    .frame(width: 22, height: 28)
                                    .foregroundStyle(.white)
                                Text("27K")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .fontWeight(.semibold)
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundStyle(.white)
                        }
                    }
                }//: HSTACK FOR BOTH ITEMS
                .padding(.bottom, 80)
            }//: VSTACK FOR THE CELL
            .padding()
            .allowsHitTesting(true) // Allow interaction with buttons
        }//: ZSTACK
        .onAppear {
            setupPlayer()
        }
        .onChange(of: isCurrentlyVisible) { wasVisible, isNowVisible in
            if isNowVisible {
                // Only play if we're visible and not manually paused
                if !isPaused {
                    playVideo()
                }
            } else {
                pauseVideo()
            }
        }
    }
    
    private func togglePlayPause() {
        isPaused.toggle()
        
        if isPaused {
            player?.pause()
        } else if isCurrentlyVisible {
            player?.play()
        }
    }
    
    private func setupPlayer() {
        guard player == nil, let url = URL(string: post.videoUrl) else { return }
        
        // Create a new player
        let newPlayer = AVPlayer(url: url)
        
        // Set up looping
        NotificationCenter.default.addObserver(
            forName: .AVPlayerItemDidPlayToEndTime,
            object: newPlayer.currentItem,
            queue: .main) { _ in
                newPlayer.seek(to: .zero)
                if isCurrentlyVisible && !isPaused {
                    newPlayer.play()
                }
            }
        
        // Set the player
        self.player = newPlayer
        
        // If this cell is visible when created, start playing (unless manually paused)
        if isCurrentlyVisible && !isPaused {
            playVideo()
        }
    }
    
    private func playVideo() {
        guard !isPaused else { return } // Don't play if manually paused
        player?.play()
    }
    
    private func pauseVideo() {
        player?.pause()
    }
}

#Preview {
    FeedCell(post: Post(id: UUID().uuidString, videoUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4"), isCurrentlyVisible: true)
}
