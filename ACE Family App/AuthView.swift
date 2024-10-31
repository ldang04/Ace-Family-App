//
//  AuthView.swift
//  ACE Family App
//
//  Created by Linh Dang on 10/29/24.
//

import SwiftUI

struct AuthView: View {
    @State var current = 0
    
    var body: some View {
        VStack<AnyView> {
            switch(current) {
                case 0:
                    return AnyView(StartView(current: $current)) 
                case 1:
                    return AnyView(RegisterView(current: $current))
                case 2:
                    return AnyView(VerificationView(current: $current))
                case 3:
                    return AnyView(JoinView(current: $current))
                case 4:
                    return AnyView(ContactView(current: $current))
                case 5:
                    return AnyView(LoginView(current: $current))
                case 6:
                    return AnyView(ForgotView(current: $current))
                case 7:
                    return AnyView(AdminLoginView(current: $current))
                default:
                    return AnyView(StartView(current: $current))
            }
        }
    }
}

#Preview {
    AuthView()
}
