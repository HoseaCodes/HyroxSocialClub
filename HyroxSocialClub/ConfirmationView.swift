//
//  ConfirmationView.swift
//  HyroxSocialClub
//
//  Created by Dominique Hosea on 6/7/24.
//

import SwiftUI

struct ConfirmationView: View {
    
    @State var confirmationCode = ""
    
    let username: String
    
    var body: some View {
        VStack {
            Text("Username: \(username)")
            TextField("Confirmation Code", text: $confirmationCode)
            Button("Confirm", action: {})
        }
        .padding()
    }
}

#Preview {
    ConfirmationView(username: "Dom")
}
