//
//  Post.swift
//  ACE Family App
//
//  Created by Linh Dang on 10/28/24.
//

import SwiftUI
import Kingfisher

struct PostView: View {
    var post: Post
    
    @State var liked = false
    @State var likes = 5 // @todo remove temp
    
    var height = 400
    var widthFactor = 0.92
    
    @State private var currentPhotoIndex = 0

    var body: some View {
        ZStack {
            // post array
            ZStack {
                VStack {
                    KFImage(post.photos[currentPhotoIndex])
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width * widthFactor, height: CGFloat(height))
                        .scaledToFill()
                        .cornerRadius(10)
                    }

                // gradient overlay
                    LinearGradient(
                        gradient: Gradient(colors: [Color.black.opacity(0.8), Color.clear]),
                        startPoint: .bottom,
                        endPoint: .center
                    )
                    .frame(maxWidth: UIScreen.main.bounds.width * widthFactor, maxHeight: CGFloat(height))
                    .cornerRadius(10)
            }
                .onTapGesture {
                        currentPhotoIndex = (currentPhotoIndex + 1) % post.photos.count
                }
            
            // post info
            VStack { // @todo fetch actual post info
                Spacer()
                
                HStack {
                    VStack {
                        Text("\(post.family) • \(formattedDate)")
                            .bold()
                            .frame(maxWidth: UIScreen.main.bounds.width * widthFactor, alignment: .leading)
                        
                        Text(post.description)
                            .frame(maxWidth: UIScreen.main.bounds.width * widthFactor, alignment: .leading)
                        
                        // @todo add point value
                    }
                    
                    Button { // @todo: add like functionality
                        if liked == true {
                            likes -= 1
                        } else {
                            likes += 1
                        }
                        liked = !liked // toggle
                        
                    } label: {
                        VStack {
                            Image(systemName: "\(liked ? "heart.fill" : "heart")")
                                .font(.system(size: 20))
                            
                            Text(String(likes))
                        }
                        
                    }
                    
                }
                            }
            .foregroundColor(.white)
            .padding(15)
            .frame(maxWidth: UIScreen.main.bounds.width * widthFactor, maxHeight: CGFloat(height))
        }
    }
    
    // formatted date
    private var formattedDate: String {
            let formatter = DateFormatter()
            formatter.dateStyle = .long // Formats to "October 28, 2024"
            return formatter.string(from: post.created_at)
        }
}

#Preview {
    PostView(post: post1)
}
