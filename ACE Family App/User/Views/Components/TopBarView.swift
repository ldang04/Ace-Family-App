//
//  TopBar.swift
//  ACE Family App
//
//  Created by Linh Dang on 10/29/24.
//

import SwiftUI

struct TopBarView: View {
    var body: some View {
        HStack {
            HStack { // top bar
                Image("VSALogoGold")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                
                Spacer()
                
                
                
            }
            .padding(.horizontal, 10)
            
            Spacer()
            
            
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
        .padding([.leading, .trailing], 10)
    }
}

#Preview {
    ZStack {
        Color.black
            .edgesIgnoringSafeArea(.all)
        TopBarView()
    }
}
