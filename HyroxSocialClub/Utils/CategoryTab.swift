//
//  CategoryTab.swift
//  HyroxSocialClub
//
//  Created by Dhruv Shrivastava on 21/09/23.
//

import SwiftUI

struct CategoryTab: View {
    let image: Image
    let title: String
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                
                VStack {
                    image
                }
                .frame(width: 40, height: 40)
                .background(.white)
                .clipShape(Circle())
                .padding(.leading, -10)
                Text(title)
                    .bold()
                    .padding(.leading, -10)
                Text("2 hours")
                    .foregroundColor(Color(.darkGray))
                    .padding(.leading, -10)
                
                
            }
            .padding(.leading, 30)
            Spacer()
        }
        .frame(width: 152, height: 110)
        .background(Color(hex: "F9D9D9"))
        .cornerRadius(12)
    }
}
struct FoodCategoryTab: View {
    let image: Image
    let title: String
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                
                VStack {
                    image
                }
                .frame(width: 40, height: 40)
                
                .padding(.leading, -10)
                Text(title)
                    .padding(.leading, -10)
                Text("2 hours")
                    .foregroundColor(Color(.red))
                    .bold()
                    .padding(.leading, -10)
                
                
            }
            .padding(.leading, 30)
            Spacer()
        }
        .frame(width: 152, height: 110)
        .background(Color(hex: "F9D9D9"))
        .cornerRadius(12)
    }
}

struct CategoryView: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 30) {
                CategoryTab(image: Image("workout_icon_selected"), title: "Workout")
                CategoryTab(image: Image("food_icon"), title: "Food")
            }
            HStack(spacing: 30) {
                CategoryTab(image: Image("meditation_icon"), title: "Mediate")
                CategoryTab(image: Image("community_icon"), title: "Community")
            }
        }
    }
}

struct CategoryTab_Previews: PreviewProvider {
    static var previews: some View {
        FoodCategoryTab(image: Image("breakfast"), title: "Breakfast")
    }
}
