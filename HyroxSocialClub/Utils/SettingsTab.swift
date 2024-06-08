//
//  SettingsTab.swift
//  HyroxSocialClub
//
//  Created by Dhruv Shrivastava on 05/10/23.
//

import SwiftUI

struct SettingsTab: View {
    let image: Image
    let title: String
    var body: some View {
        HStack {
            image
                .padding(.leading)
            Text(title)
                .padding(.leading)
            Spacer()
            Image(systemName: "play.fill")
                .resizable()
                .frame(width: 8.7, height: 10.5)
                .padding(.trailing)
        }
        .frame(width: UIScreen.main.bounds.width, height: 62)
        .background(Color(hex: "F8F8F8"))
    }
}


struct SettingsTab_Previews: PreviewProvider {
    static var previews: some View {
        SettingsTab(image: Image("coaches_icon"), title: "Coaches")
    }
}
