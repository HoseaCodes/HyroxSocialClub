//
//  SessionView.swift
//  HyroxSocialClub
//
//  Created by Dominique Hosea on 6/8/24.
//

import SwiftUI

struct SessionView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("You signed in using Amplify!! 😤")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            Button("Sign Out", action: {})
        }
    }
}

#Preview {
    SessionView()
}
