//
//  ContentView.swift
//  ACE Family App
//
//  Created by Linh Dang on 10/28/24.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var appState: AppState

    var body: some View {
        switch appState.currentSection {
        
        case .auth:
            AuthView()
        case .user:
            UserView()
        case .admin:
            AdminView()
        }
    }
}

enum AppSection {
    case auth
    case user
    case admin
}

#Preview {
    RootView()
           .environmentObject(AppState())
}
