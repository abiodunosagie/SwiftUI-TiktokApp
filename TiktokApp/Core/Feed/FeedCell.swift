//
//  FeedCell.swift
//  TiktokApp
//
//  Created by Abiodun Osagie on 19/04/2025.
//

import SwiftUI

struct FeedCell: View {
    // MARK: - PROPERTIES
    let post: Int
    var body: some View {
        ZStack {
            Rectangle()
                .containerRelativeFrame([.horizontal, .vertical])
                .overlay {
                    Text("Post \(post)")
                        .foregroundStyle(.white)
                }
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
    FeedCell(post: 2)
}
