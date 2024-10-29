//
//  MainUserView.swift
//  ACE Family App
//
//  Created by Linh Dang on 10/28/24.
//

import Foundation
import SwiftUI


struct MainUserView: View {
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
                    HStack { // top bar
                        Image("VSALogoGold")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60, height: 60)

                        Spacer()
                        
                        
                        HStack {
                            Button {
                                // @todo go to own profile
                            } label: {
                                Image(systemName: "gearshape.fill")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 25))
                            }
                            
                            Button {
                                // @todo go to own profile
                            } label: {
                                Image(systemName: "person.fill")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 25))
                            }
                        }
                        
                    }
                    .padding(.leading, 10)
                    .padding(10)
                    
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
                    .accentColor(Color("VSARed"))
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
    MainUserView()
}
