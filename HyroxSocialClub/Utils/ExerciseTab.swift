//
//  ExerciseTab.swift
//  HyroxSocialClub
//
//  Created by Dhruv Shrivastava on 02/10/23.
//

import SwiftUI

struct ExerciseTab: View {
    let image: Image
    let time: String
    let name: String
    var body: some View {
        HStack {
            image
                .resizable()
                .frame(width: 60, height: 60)
                .cornerRadius(13)
            VStack(alignment: .leading) {
                Text(name)
                    .font(.subheadline)
                    .bold()
                Text(time + " Minutes")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            Spacer()
            Image("play_icon")
        }
        .frame(width: 334, height: 63.41)
        .background(Color(hex: "f8f8f8"))
    }
}


struct ExerciseTab_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseTab(image: Image("image4"), time: "02.30", name: "Upper legs exercise")
    }
}
