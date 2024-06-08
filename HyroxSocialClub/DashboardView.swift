//
//  DashboardView.swift
//  HyroxSocialClub
//
//  Created by Dhruv Shrivastava on 19/09/23.
//

import SwiftUI

struct DashboardView: View {
    @State var text: String = ""
    var body: some View {
        ScrollView {
            HStack {
                VStack(alignment: .leading) {
                    Text("Everyday we're muscle'n")
                        .textCase(.uppercase)
                    Text("Hello, Kakshi 👋")
                        .font(.title)
                        .bold()
                        .padding(.top, 5)
                }
                Spacer()
                Button {
                    
                } label: {
                    VStack {
                        Image("menu_icon")
                            .resizable()
                            .padding(10)
                    }
                    .frame(width: 42, height: 39)
                    .background(.white)
                    .cornerRadius(12)
                    .shadow(color: .black, radius: 0.5)
                    
                }
            }
            .padding()
            SearchBar(countryName: $text)
                .padding([.leading, .trailing])
                .shadow(color: Color(hex: "FBE8E8"),radius: 15)
            HStack {
                VStack() {
                    Text("MY PLAN FOR TODAY")
                        .frame(width: 214, height: 64)
                        .foregroundColor(.white)
                        .font(.custom("", size: 23))
                        .multilineTextAlignment(.leading)
                    HStack(spacing: 30) {
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
                    }
                    
                }
                CircularProgressView(progress: 0.6)
                    .padding()
            }
            .frame(width: 350, height: 144)
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
                Text("Start new goal")
                    .font(.title2)
                    .bold()
                Spacer()
                Button {
                    
                } label: {
                    Text("See All")
                        .foregroundColor(.red)
                }
            }
            .padding()
            ScrollView(.horizontal) {
                HStack(spacing: 20){
                    TrainingTab(image: Image("image1"), title: "Lower Body Training", subtitle: "Full body workout")
                    TrainingTab(image: Image("image1"), title: "Lower Body Training", subtitle: "Full body workout")
                    TrainingTab(image: Image("image1"), title: "Lower Body Training", subtitle: "Full body workout")
                }
                .padding(.leading)
            }
            .scrollIndicators(.hidden)
            HStack {
                Text("Category")
                    .font(.title2)
                    .bold()
                Spacer()
            }
            .padding()
            CategoryView()
            Button {
                
            } label: {
                Text("Lets Go")
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 317, height: 47)
                    .background(Color(hex: "252727"))
                    .cornerRadius(99)
                    .padding(.top, 20)
            }
            HStack {
                Text("Weekly Stats")
                    .font(.title2)
                    .bold()
                Spacer()
                Button {
                    
                } label: {
                    Text("See All")
                        .foregroundColor(.red)
                }
            }
            .padding()
            BarGraph()
                .overlay {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.gray, lineWidth: 1)
                }
                .overlay(alignment: .top, content: {
                    HStack {
                        Text("Most Active: ")
                            .foregroundStyle(.gray)
                            .bold()
                        Text("Friday")
                            .foregroundStyle(.black)
                            .bold()
                    }
                    .padding(.top)
                })
                .padding(.bottom, 80)
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
