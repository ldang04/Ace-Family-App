//
//  AnnouncementView.swift
//  ACE Family App
//
//  Created by Linh Dang on 10/29/24.
//

import SwiftUI

struct AnnouncementView: View {
    var announcement: Announcement
    var widthFactor = 0.92
    
    var body: some View {
        VStack {
            Text(announcement.title)
                .font(.system(size: 23))
                .foregroundColor(.white)
                .frame(maxWidth: UIScreen.main.bounds.width * widthFactor, alignment: .leading)
                .bold()
                .padding(.bottom, 5)
          
            
            Text(announcement.description)
                .font(.body)
                .foregroundColor(.white)
                .frame(maxWidth: UIScreen.main.bounds.width * widthFactor, alignment: .leading)
                .padding(.bottom, 5)

            
            Text("Posted on \(formattedDate)")
                .frame(maxWidth: UIScreen.main.bounds.width * widthFactor, alignment: .leading)
                .foregroundColor(.white)
                .italic()
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.white, lineWidth: 2) // Use stroke to set the border color and width
        )
        .frame(maxWidth: UIScreen.main.bounds.width * widthFactor, alignment: .leading)
    }
    
    // formatted date
    private var formattedDate: String {
            let formatter = DateFormatter()
            formatter.dateStyle = .long // Formats to "October 28, 2024"
            return formatter.string(from: announcement.created_at)
        }
}

#Preview {
    ZStack {
        Color.black
            .edgesIgnoringSafeArea(.all)
        
        AnnouncementView(announcement: announcement1)
    }
}
