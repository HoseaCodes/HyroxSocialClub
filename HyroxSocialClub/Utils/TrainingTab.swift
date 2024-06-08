//
//  TrainingTab.swift
//  HyroxSocialClub
//
//  Created by Dhruv Shrivastava on 21/09/23.
//

import SwiftUI

struct TrainingTab: View {
    let image: Image
    let title: String
    let subtitle: String
    var body: some View {
        VStack(alignment: .leading) {
            image
                .resizable()
                .frame(width: 280, height: 174)
                .overlay(alignment: .bottomTrailing) {
                    Button {
                        
                    } label: {
                        Image("play_icon")
                            .padding(.trailing, 10)
                            .padding(.bottom, -20)
                    }
                }
            Text(title)
                .font(.title2)
                .bold()
            Text(subtitle)
                .foregroundColor(Color(.darkGray))
                .padding(.top , 5)
            HStack {
                Button {
                    
                } label: {
                    HStack {
                        Image("clock_icon")
                        Text("50 Min")
                            .foregroundColor(.red)
                    }
                }
                .buttonStyle(.borderedProminent)
                .tint(Color(hex: "F9D9D9"))
                .overlay {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.red, lineWidth: 1)
                }
                
                Button {
                    
                } label: {
                    HStack {
                        Image("drop_icon")
                        Text("500 kcan")
                            .foregroundColor(.red)
                    }
                }
                .buttonStyle(.borderedProminent)
                .tint(Color(hex: "F9D9D9"))
                .overlay {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.red, lineWidth: 1)
                }
            }
        }
    }
}

struct TrainingTab_Previews: PreviewProvider {
    static var previews: some View {
        TrainingTab(image: Image("image1"), title: "Lower Body Training", subtitle: "Full body workout")
    }
}
