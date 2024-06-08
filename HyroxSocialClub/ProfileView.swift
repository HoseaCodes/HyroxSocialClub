//
//  ProfileView.swift
//  HyroxSocialClub
//
//  Created by Dhruv Shrivastava on 04/10/23.
//

import SwiftUI

struct ProfileView: View {
    @State var text: String = ""
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Button {
                        
                    } label: {
                        Image("back_icon")
                    }
                    Text("Profile")
                        .font(.title2)
                        .bold()
                        .foregroundStyle(.white)
                        .padding(.bottom, 10)
                    Spacer()
                }
                .padding(.top, 50)
                VStack {
                    Image("profile_pic")
                    Text("Aleze khan")
                        .foregroundStyle(.white)
                        .fontWeight(.heavy)
                    Text("Beginner,Maintaing")
                        .foregroundStyle(.white)
                    Text("Today Workout")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .padding(.top)
                    Text("Complete")
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                }
                .padding(.bottom)
                HStack(spacing: 31) {
                    VStack(spacing: 15) {
                        Text("Weight")
                            .foregroundStyle(.white)
                            .fontWeight(.heavy)
                        Text("194.0/230.0")
                            .foregroundStyle(.white)
                    }
                    .frame(width: 152, height: 79)
                    .overlay {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.white, lineWidth: 1)
                    }
                    VStack(spacing: 15) {
                        Text("Body Fat")
                            .foregroundStyle(.white)
                            .fontWeight(.heavy)
                        Text("0.0/0.0")
                            .foregroundStyle(.white)
                    }
                    .frame(width: 152, height: 79)
                    .overlay {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.white, lineWidth: 1)
                    }
                }
                HStack {
                    Text("Become Elite")
                        .foregroundStyle(.white)
                    Spacer()
                    Text("21.2 K Iron Points")
                        .foregroundStyle(.white)
                }
                .padding()
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2 + 50 )
            .background {
                Image("profile_bg")
                    .resizable()
                    .overlay(alignment: .bottomLeading) {
                        Image("circle")
                            .padding(.bottom, 40)
                    }
                    .overlay(alignment: .topTrailing) {
                        Image("circle")
                            .rotationEffect(.degrees(180))
                            .padding(.top, 40)
                    }
            }
            HStack {
                Text("Progress Photoes")
                    .font(.title2)
                    .bold()
                Spacer()
                Button {
                    
                } label: {
                    Text("View All")
                        .foregroundColor(.red)
                }
            }
            .padding()
            HStack {
                Image("camera_picker")
                    .padding(.leading)
                Text("Select Files")
                    .foregroundStyle(Color(hex: "586066"))
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width, height: 62)
            .background(.white)
            .shadow(radius: 5)
            VStack(spacing: 20) {
                SettingsTab(image: Image("coaches_icon"), title: "Coaches")
                    .padding(.top, 32)
                SettingsTab(image: Image("watch_icon"), title: "Watch App")
                SettingsTab(image: Image("map_icon"), title: "Training Location")
                SettingsTab(image: Image("notifications_icon"), title: "Notifications")
                SettingsTab(image: Image("settings_icon"), title: "Settings")
                    .padding(.bottom, 80)
            }
        }
        .ignoresSafeArea()
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
