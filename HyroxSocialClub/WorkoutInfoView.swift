//
//  WorkoutInfoView.swift
//  HyroxSocialClub
//
//  Created by Dhruv Shrivastava on 02/10/23.
//

import SwiftUI

struct WorkoutInfoView: View {
    @State var text: String = ""
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Button {
                        
                    } label: {
                        Image("back_icon_t")
                    }
                    .padding(.leading)
                    Spacer()
                }
                .padding(.top, 50)
                
                Spacer()
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
                .padding(.bottom, 60)
                .padding(.trailing, 100)
                
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2-40)
            .background {
                Image("image5")
                    .resizable()
                    .scaledToFill()
            }
            Spacer()
            VStack(alignment: .leading) {
                Text("Day 01 - Lower Body")
                    .font(.title2)
                    .bold()
                    .padding([.leading, .top])
                Text("04 Workouts for Beginner")
                    .foregroundStyle(.red)
                    .padding(.leading)
                Text("Want your body to be healthy. Join our program with directions according to body’s goals. Increasing physical strength is the goal of strenght training. Maintain body fitness by doing physical exercise at least 2-3 times a week.")
                    .foregroundStyle(Color(hex: "586066"))
                    .padding([.leading, .top])
                HStack {
                    Text("Rounds")
                        .font(.title3)
                        .bold()
                        .foregroundStyle(.black)
                    
                    Spacer()
                    
                }
                .padding()
                WorkoutTabView(image: Image("image4"), time: "02.30", name: "Upper legs exercise")
                    .padding(.leading)
                WorkoutTabView(image: Image("image4"), time: "02.30", name: "Upper legs exercise")
                    .padding(.leading)
                WorkoutTabView(image: Image("image4"), time: "02.30", name: "Upper legs exercise")
                    .padding(.leading)
                Button {
                    
                } label: {
                    Text("Lets Go")
                        .bold()
                        .foregroundColor(.white)
                        .frame(width: 263, height: 47)
                        .background(Color(hex: "252727"))
                        .cornerRadius(99)
                        .padding(.leading, 58)
                        .padding(.top)
                }
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height-200)
            .background(Color(hex: "FBE8E8"))
            .cornerRadius(20)
            .padding(.top, -50)
            
        }
        .ignoresSafeArea()
    }
}

struct WorkoutInfoView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutInfoView()
    }
}
