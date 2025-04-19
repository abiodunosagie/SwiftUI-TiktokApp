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
    var body: some View {
        ZStack {
            VideoPlayer(player: AVPlayer(url: URL(string: post.videoUrl)!))
                .containerRelativeFrame([.horizontal, .vertical])
               
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
        }//: ZSTACK
    }
}

#Preview {
    FeedCell(post: Post(id: UUID().uuidString, videoUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4"))
}
