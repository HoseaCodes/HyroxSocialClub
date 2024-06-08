//
//  ContentView.swift
//  HyroxSocialClub
//
//  Created by Dhruv Shrivastava on 19/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        TabView(selection: $selection) {
//            DashboardView()
//                .tabItem {
//                    if selection == 0 {
//                        Image("dashboard_icon_selected")
//                    } else {
//                        Image("dashboard_icon")
//                    }
//                    Text("Dashboard")
//                }
//                .tag(0)
            
            WorkoutScreen()
                .tabItem {
                    if selection == 1 {
                        Image("workout_icon_selected")
                    } else {
                        Image("workout_icon")
                    }
                    Text("Workout")
                }
                .tag(1)
            ProgresssView()
                .tabItem {
                    if selection == 2 {
                        Image("progress_icon_selected")
                    } else {
                        Image("progress_icon")
                    }
                    
                    Text("Progress")
                }
                .tag(2)
            ExerciseView()
                .tabItem {
                    if selection == 3 {
                        Image("exercise_icon_selected")
                    } else {
                        Image("exercise_icon")
                    }
                    Text("Exercise")
                }
                .tag(3)
            ProfileView()
                .tabItem {
                    if selection == 4 {
                        Image("profile_icon_selected")
                    } else {
                        Image("profile_icon")
                    }
                    Image("profile_icon")
                    Text("Profile")
                }
                .tag(4)
        }
        .tint(.black)
        .overlay(
            Slider(selection: $selection)
        )
    }
}

struct Slider: View {
    @Binding var selection: Int
    
    var body: some View {
        GeometryReader { geometry in
            RoundedRectangle(cornerRadius: 2.5)
                .frame(width: geometry.size.width / 4 - 20, height: 5)
                .foregroundColor(.red)
                .offset(x: CGFloat(selection) * (geometry.size.width / 5) , y: UIScreen.main.bounds.height - 144)
                .animation(.easeInOut(duration: 0.2))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
