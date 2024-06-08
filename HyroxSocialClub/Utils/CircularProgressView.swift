//
//  CircularProgressView.swift
//  HyroxSocialClub
//
//  Created by Dhruv Shrivastava on 06/10/23.
//

import SwiftUI

struct CircularProgressView: View {
    let progress: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    Color(hex: "D8EFFF"),
                    lineWidth: 15
                )
            Text("\(Int(progress*100))%")
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Circle()
                .trim(from: 0, to: progress)
                .stroke(
                    Color.red,
                    style: StrokeStyle(
                        lineWidth: 15,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))
                // 1
                .animation(.easeOut, value: progress)

        }
        
    }
}

struct CircularProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressView(progress: 0.60)
            .frame(width: 114, height: 114)
    }
}
