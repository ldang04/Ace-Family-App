//
//  FeedView.swift
//  ACE Family App
//
//  Created by Linh Dang on 10/28/24.
//

import SwiftUI
import Kingfisher

struct FeedView: View {
    // TrackableScrollView states
    @State private var activeIndex = 0;
    @State private var scrollOffset: CGFloat = 0.0
    
    func updateActiveIndex(fromScroll scroll: CGFloat){
            if scroll < 105 {
                activeIndex = 0
            } else {
                let remove105 = scroll - 105
                
                let active = Int(remove105 / 410) + 1
                activeIndex = Int(active)
            }
    }
    
    var body: some View {
        let scrollTrackingBinding = Binding {
            return scrollOffset
        } set: { newVal in
            scrollOffset = newVal
            updateActiveIndex(fromScroll: newVal)
        }
        
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                // feed
                TrackableScrollView(.vertical, showIndicators: false, contentOffset: scrollTrackingBinding){
                    
                    // family leaderboard
                    ScrollView(.horizontal){
                        HStack {
                            ForEach(families.sorted(by: { $0.points > $1.points }), id: \.self.name){ family in
                                
                                Button {
                                    // @todo go to family profile
                                } label: {
                                    VStack {
                                        ZStack {
                                        
                                            Circle()
                                                .fill(Color("VSARed"))
                                                .frame(width: 85, height: 85)
                                            
                                            KFImage(family.photo)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 70, height: 70)
                                                .background(.blue)
                                                .clipShape(Circle())
                                            
                                            Circle()
                                                .fill(Color("VSARed"))
                                                .frame(width: 30, height: 30)
                                                .offset(x: 30, y: -30)
                                            
                                            Text(String(family.points))
                                                .foregroundStyle(.white)
                                                .bold()
                                                .font(.system(size: 14))
                                                .offset(x: 30, y: -30)

                                        }
                                        
                                        Text(family.name)
                                            .foregroundStyle(.white)
                                            .bold()
                                            .padding(.top, 1)
                                            .font(.system(size: 14))
                                        
                                    }
                                        .padding(.trailing, 5)
                                }
                                
                            }
                        }
                        .padding()
                    }
                    
                    // Posts
                    LazyVStack { // @todo map over real posts
                        ForEach(Array(posts.enumerated()), id: \.element.id) { index, post in
                            
                            PostView(post: post)
                                .overlay(
                                    Group {
                                        index == activeIndex ? Color.clear : Color.black.opacity(0.5)
                                    }
                                        .animation(.easeInOut, value: activeIndex)
                                )
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
