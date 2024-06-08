//
//  SessionView.swift
//  HyroxSocialClub
//
//  Created by Dominique Hosea on 6/8/24.
//

import SwiftUI
import Amplify

struct SessionView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    let user: AuthUser
    
    var body: some View {
        VStack {
            Spacer()
            Text("You signed in as \(user.username) using Amplify!! 😤")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            Button("Sign Out", action: {
                sessionManager.signOut()
            })
            Button("Go to Dashboard", action: {
                DashboardView(user: user)
            })
        }
    }
}

private struct DummyUser: AuthUser {
    let userId: String = "1"
    let username: String = "dummy"
}

#Preview {
   
    SessionView(user: DummyUser())
}
