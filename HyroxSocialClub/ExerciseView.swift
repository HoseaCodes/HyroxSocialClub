//
//  ExerciseView.swift
//  HyroxSocialClub
//
//  Created by Dhruv Shrivastava on 02/10/23.
//

import SwiftUI

struct ExerciseView: View {
    @State var text: String = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    HStack {
                        Button {
                            
                        } label: {
                            Image("back_icon")
                        }
                        Text("Exercise")
                            .font(.title2)
                            .bold()
                            .padding(.bottom, 10)
                        Spacer()
                    }
                    .padding(.top, 50)
                    SearchBar(countryName: $text)
                        .padding([.leading, .trailing])
                    HStack {
                        Text("Warm up")
                            .font(.title2)
                            .bold()
                        Spacer()
                        
                    }
                    .padding()
                    Text("Warm up properly before exercising to prevent injury and make your workouts more effective.")
                        .foregroundStyle(Color(hex: "586066"))
                    HStack {
                        Button {
                            
                        } label: {
                            HStack {
                                Image(systemName: "clock")
                                    .foregroundColor(.red)
                                Text("10.00 mins")
                                    .foregroundColor(.red)
                                    .bold()
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
                                Image(systemName: "figure.run")
                                    .foregroundColor(.red)
                                Text("Running")
                                    .foregroundColor(.red)
                                    .bold()
                            }
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(Color(hex: "F9D9D9"))
                        .overlay {
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(.red, lineWidth: 1)
                        }
                    }
                    .padding(.trailing, 90)
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
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2)
                .background(Color(hex: "FBE8E8"))
                
                VStack(spacing: 20) {
                    NavigationLink {
                        ExerciseNewTab()
                    } label: {
                        ExerciseTab(image: Image("image4"), time: "02.30", name: "Upper legs exercise")
                            .foregroundColor(.black)
                            .padding(.top)
                    }
                    ExerciseTab(image: Image("image4"), time: "02.30", name: "Upper legs exercise")
                    ExerciseTab(image: Image("image4"), time: "02.30", name: "Upper legs exercise")
                    ExerciseTab(image: Image("image4"), time: "02.30", name: "Upper legs exercise")
                    ExerciseTab(image: Image("image4"), time: "02.30", name: "Upper legs exercise")
                        .padding(.bottom, 80)
                }
            }
            .ignoresSafeArea()
        }
    }
}


struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView()
    }
}
