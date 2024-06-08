//
//  SignUpView.swift
//  HyroxSocialClub
//
//  Created by Dominique Hosea on 6/7/24.
//

import SwiftUI

struct SignUpView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @State var username = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            TextField("Username", text: $username)
            TextField("Email", text: $email)
            SecureField("Password", text: $password)
            Button("Sign Up", action: {
                sessionManager.signUp(username: username, email: email, password: password)
            })
            
            Spacer()
            Button("Already have an account? Log in.", action: sessionManager.showLogin)
        }
        .padding()
    }
}

#Preview {
    SignUpView()
}
