//
//  WorkoutTabView.swift
//  HyroxSocialClub
//
//  Created by Dhruv Shrivastava on 03/10/23.
//

import SwiftUI

struct WorkoutTabView: View {
    let image: Image
    let time: String
    let name: String
    var body: some View {
        HStack {
            image
                .resizable()
                .frame(width: 58, height: 58)
                .cornerRadius(13)
                .padding(.leading)
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
                .resizable()
                .frame(width: 28, height: 28)
                .padding()
        }
        .frame(width: 335, height: 75)
        .background(Color(hex: "f8f8f8"))
        .cornerRadius(15)
    }
}


struct WorkoutTabView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutTabView(image: Image("image4"), time: "02.30", name: "Upper legs exercise")
    }
}

