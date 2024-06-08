//
//  AddFoodView.swift
//  HyroxSocialClub
//
//  Created by Dhruv Shrivastava on 12/10/23.
//

import SwiftUI

struct AddFoodView: View {
    @State private var selectedChoice = ""
    let array = ["Today", "Yesterday"]
    var body: some View {
        ScrollView {
            HStack {
                Button {
                    
                } label: {
                    Image("back_icon")
                }
                Text("Add Food List")
                    .font(.title2)
                    .bold()
                    .foregroundStyle(.black)
                    .padding(.bottom, 10)
                Spacer()
            }
//            .padding(.top, 50)
            Picker("Select an option", selection: $selectedChoice) {
                ForEach(array, id: \.self) { choice in
                    Text(choice)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                    
                }
            }
            .pickerStyle(DefaultPickerStyle())
            .tint(.red)
            .bold()
            VStack {
                HStack {
                    VStack() {
                        Text("MY PLAN FOR TODAY")
                            .frame(width: 214, height: 64)
                            .foregroundColor(.white)
                            .font(.custom("", size: 23))
                            .multilineTextAlignment(.leading)
                        HStack(spacing: 20) {
                            VStack {
                                Text("1350")
                                    .foregroundColor(.white)
                                Text("Eaten")
                                    .foregroundColor(.white)
                                    .font(.caption)
                            }
                            VStack {
                                Text("680")
                                    .foregroundColor(.white)
                                Text("Burned")
                                    .foregroundColor(.white)
                                    .font(.caption)
                            }
                            VStack {
                                Text("680")
                                    .foregroundColor(.white)
                                Text("Burned")
                                    .foregroundColor(.white)
                                    .font(.caption)
                            }
                        }
                        
                    }
                    CircularProgressView(progress: 0.6)
                        .padding()
                }
                ProgressView(value: .init(0.8))
                    .progressViewStyle(.linear)
                    .zIndex(2)
                    .tint(.red)
                    .padding()
            }
            .frame(width: 350, height: 180)
            .background(Color(hex: "252727"))
            .cornerRadius(20)
            .padding(.top)
            .overlay(alignment: .leading) {
                Image("vector")
            }
            .overlay(alignment: .trailing) {
                Image("vector")
                    .opacity(0.3)
            }
            HStack {
                Text("Add Food Categories")
                    .font(.title2)
                    .bold()
                Spacer()
            }
            .padding()
            VStack(spacing: 20) {
                HStack(spacing: 30) {
                    FoodCategoryTab(image: Image("breakfast"), title: "Breakfast")
                    FoodCategoryTab(image: Image("lunch"), title: "Lunch")
                }
                HStack(spacing: 30) {
                    FoodCategoryTab(image: Image("Dinner"), title: "Dinner")
                    FoodCategoryTab(image: Image("breakfast"), title: "Breakfast")
                }
            }
        }
    }
}


struct AddFoodView_Previews: PreviewProvider {
    static var previews: some View {
        AddFoodView()
    }
}
