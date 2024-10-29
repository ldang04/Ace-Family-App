//
//  AnnouncementsView.swift
//  ACE Family App
//
//  Created by Linh Dang on 10/28/24.
//

import SwiftUI

struct AnnouncementsView: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(.vertical){
                
                VStack { // posts
                    ForEach(announcements, id: \.self.id) { announcement in
                        AnnouncementView(announcement: announcement)
                            .padding(.bottom, 15)
                    }
                }
            }
        }
    }
}

#Preview {
    AnnouncementsView()
}
