//
//  LoginView.swift
//  HyroxSocialClub
//
//  Created by Dominique Hosea on 6/7/24.
//

import SwiftUI

struct LoginView: View {
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            TextField("Username", text: $username)
            SecureField("Password", text: $password)
            Button("Login", action: {})
            
            Spacer()
            Button("Don't have an account? Sign up.", action: {})
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
