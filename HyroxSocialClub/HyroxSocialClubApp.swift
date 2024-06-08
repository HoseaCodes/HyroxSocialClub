//
//  HyroxSocialClubApp.swift
//  HyroxSocialClub
//
//  Created by Dhruv Shrivastava on 19/09/23.
//
import Amplify
import AmplifyPlugins
import SwiftUI

@main
struct HyroxSocialClubApp: App {
    
    @ObservedObject var sessionManager = SessionManager()
    
    init() {
        configureAmplify()
        sessionManager.getCurrentAuthUser()
    }
    
    var body: some Scene {
        WindowGroup {
            switch sessionManager.authState {
            case .signup:
                SignUpView()
                    .environmentObject(sessionManager)
            case .login:
                LoginView()
                    .environmentObject(sessionManager)
            case .confirmCode(let username):
                ConfirmationView(username: username)
                    .environmentObject(sessionManager)
            case .session(let user):
                SessionView(user: user)
                    .environmentObject(sessionManager)
//                DashboardView(user: user)
//                    .environmentObject(sessionManager)
            }
//            SplashScreen()
        }
    }
    
    private func configureAmplify() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.configure()
            print("Amplify configured successfully")
        } catch {
            print("Could not initialize Amplify", error)
        }
    }
}
