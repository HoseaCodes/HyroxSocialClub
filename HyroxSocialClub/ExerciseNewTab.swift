//
//  ExerciseNewTab.swift
//  HyroxSocialClub
//
//  Created by Dhruv Shrivastava on 02/10/23.
//

import SwiftUI

struct ExerciseNewTab: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var text: String = ""
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image("back_icon")
                    }
                    Text("Exercise")
                        .font(.title2)
                        .bold()
                        .foregroundStyle(.white)
                        
                    Spacer()
                }
                .padding(.top, 50)
                SearchBar(countryName: $text)
                    .padding([.leading, .trailing])
                HStack {
                    Text("Warm up")
                        .font(.title2)
                        .bold()
                        .foregroundStyle(.white)
                    Spacer()
                    
                }
                .padding()
                Text("Warm up properly before exercising to prevent injury and make your workouts more effective.")
                    .foregroundStyle(.white)
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
            .background {
                Image("image6")
                    .resizable()
            }
            VStack(spacing: 20) {
                ExerciseTab(image: Image("image4"), time: "02.30", name: "Upper legs exercise")
                    .padding(.top)
                ExerciseTab(image: Image("image7"), time: "02.30", name: "Upper legs exercise")
                ExerciseTab(image: Image("image8"), time: "02.30", name: "Upper legs exercise")
                ExerciseTab(image: Image("image5"), time: "02.30", name: "Upper legs exercise")
                ExerciseTab(image: Image("image4"), time: "02.30", name: "Upper legs exercise")
                    .padding(.bottom, 80)
            }
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
    }
}


struct ExerciseNewTab_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseNewTab()
    }
}
