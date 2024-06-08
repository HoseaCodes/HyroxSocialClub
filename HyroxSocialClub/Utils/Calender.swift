//
//  Calender.swift
//  HyroxSocialClub
//
//  Created by Dhruv Shrivastava on 08/10/23.
//

import Foundation
import SwiftUI


struct CustomWeekHeader: View {
    var arr = ["S" , "M", "T", "W", "Th", "F", "Sa"]
    @State var isSelected = "M"
    let date = 10
    var body: some View {
        HStack(spacing: 10) {
            ForEach(arr, id: \.self) { day in
                VStack {
                    Button {
                        isSelected = day
                    } label: {
                        VStack {
                            Text(day)
                                .foregroundStyle(isSelected==day ? .white : .black)
                            Text("\(date+arr.index(after: arr.firstIndex(of: day) ?? 0))")
                                .foregroundStyle(isSelected==day ? .white : .black)
                        }
                        .frame(width: 45, height: 46)
                        .background(isSelected==day ? Color(hex: "ff2525") : Color(hex: "f8f8f8"))
                        .cornerRadius(12)
                    }
                    if isSelected==day {
                        Circle()
                            .foregroundStyle(Color(hex: "ff2525"))
                            .frame(width: 6, height: 6)
                    } else {
                        Circle()
                            .foregroundStyle(.white)
                            .frame(width: 6, height: 6)
                    }
                }
            }
        }
        .frame(height: 60)
    }
    
}
