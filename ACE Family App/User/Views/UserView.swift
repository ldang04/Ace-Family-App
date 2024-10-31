//
//  MainUserView.swift
//  ACE Family App
//
//  Created by Linh Dang on 10/28/24.
//

import Foundation
import SwiftUI


struct UserView: View {
    @State private var selectedTab: Tab = .feed

    init() {
           // Customize tab bar appearance
           let appearance = UITabBarAppearance()
           appearance.configureWithOpaqueBackground()
           appearance.backgroundColor = UIColor.black // Set tab bar background color to black
           UITabBar.appearance().standardAppearance = appearance
           UITabBar.appearance().scrollEdgeAppearance = appearance
           UITabBar.appearance().tintColor = UIColor.red // Set the selected item color to red
           UITabBar.appearance().unselectedItemTintColor = UIColor.white // Set unselected item color to white
       }
    
        var body: some View {
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                    
                VStack {
                    TopBarView()
                    
                    TabView(selection: $selectedTab) {
                        AnnouncementsView()
                            .tabItem {
                                Image(systemName: "megaphone")
                            }
                            .tag(Tab.announcements)

                        FeedView()
                            .tabItem {
                                Image(systemName: "rectangle.stack")
                            }
                            .tag(Tab.feed)
                        
                        CameraView()
                            .tabItem {
                                Image(systemName: "camera")
                            }
                            .tag(Tab.camera)
                    }
                    .accentColor(Color.white)
                    }
                }
            }
        }

enum Tab {
    case announcements
    case camera
    case feed
}



#Preview {
    UserView()
}
