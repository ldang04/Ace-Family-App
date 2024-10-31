//
//  StartView.swift
//  ACE Family App
//
//  Created by Linh Dang on 10/29/24.
//

import SwiftUI

struct StartView: View {
    @Binding var current: Int
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("VSALogoGold")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 160, height: 160)
                    .padding(.bottom, 10)
                
                Button { // login
                    current = 5
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 100)
                            .fill(Color("VSARed"))
                            .frame(width: UIScreen.main.bounds.width * 0.8, height: 50)
                        
                        Text("Login")
                            .foregroundColor(.white) // Set text color
                            .bold()
                            .font(.system(size: 22))
                        
                    }
                }
                
                Button { // register
                    current = 1
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 100)
                            .fill(Color("VSARed"))
                            .frame(width: UIScreen.main.bounds.width * 0.8, height: 50)
                        
                        Text("Register")
                            .foregroundColor(.white) // Set text color
                            .bold()
                            .font(.system(size: 22))
                        
                    }
                }
                
                HStack {
                    Spacer()
                    
                    Button { // Admin access
                        current = 7
                    } label: {
                        Text("Admin?")
                            .bold()
                            .foregroundStyle(.white)
                            .font(.system(size: 22))
                    }
                }
                .frame(maxWidth: UIScreen.main.bounds.width * 0.8)
                .padding(.top, 5)
                
            }
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    StartView(current: .constant(0))
}
