//
//  WorkoutScreen.swift
//  HyroxSocialClub
//
//  Created by Dhruv Shrivastava on 30/09/23.
//

import SwiftUI

struct WorkoutScreen: View {
    init() {
    // Sets the background color of the Picker
        UISegmentedControl.appearance().backgroundColor = .black
    // Disappears the divider
       UISegmentedControl.appearance().setDividerImage(UIImage(), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
    // Changes the color for the selected item
       UISegmentedControl.appearance().selectedSegmentTintColor = .red
    // Changes the text color for the selected item
       UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
        
        // Changes the text color for the selected item
            let selectedTextAttributes: [NSAttributedString.Key: Any] = [
                .foregroundColor: UIColor.white,
                .font: UIFont.boldSystemFont(ofSize: UIFont.systemFontSize) // You can customize the font size if needed
            ]
            UISegmentedControl.appearance().setTitleTextAttributes(selectedTextAttributes, for: .selected)
        // Set corner radius for the selected item
        UISegmentedControl.appearance().layer.cornerRadius = 20
        UISegmentedControl.appearance().layer.masksToBounds = true
    }
    @State private var favoriteColor = 0
    var body: some View {
        ScrollView {
            Picker("What is your favorite color?", selection: $favoriteColor) {
                Text("Current")
                    .foregroundColor(.white)
                    .tag(0)
                Text("Advance").tag(1)
                Text("All").tag(2)
                
            }
            .pickerStyle(SegmentedPickerStyle())
            .frame(width: UIScreen.main.bounds.width-30)
            .cornerRadius(20)

//            .cornerRadius(30)
            HStack {
                Text("Best For You")
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
            WorkoutTab(image: Image("image2"), title: "Wake Up Call", no: "04", level: .beginner, isPro: true)
            WorkoutTab(image: Image("image1"), title: "Wake Up Call", no: "04", level: .beginner, isPro: false)
            HStack {
                Text("Fast Warmup")
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
            WorkoutTab(image: Image("image2"), title: "Wake Up Call", no: "04", level: .beginner, isPro: true)
            WorkoutTab(image: Image("image1"), title: "Wake Up Call", no: "04", level: .beginner, isPro: false)
                .padding(.bottom, 80)
        }
        
    }
}

struct WorkoutTab: View {
    let image: Image
    let title: String
    let no: String
    let level: Level
    let isPro: Bool
    var body: some View {
        image
            .resizable()
            .frame(width: 335, height: 160)
            .cornerRadius(16)
            .overlay(alignment: .bottomLeading) {
                VStack(alignment: .leading) {
                    Text(title)
                        .foregroundStyle(.white)
                        .bold()
                    HStack {
                        Image("red_bar")
                        Text(no)
                            .foregroundStyle(.white)
                        Text("Workouts for")
                            .foregroundStyle(.white)
                        switch level {
                        case .beginner:
                            Text("Beginner").foregroundStyle(.white)
                        case .advance:
                            Text("Advance").foregroundStyle(.white)
                        }
                        Spacer()
                        if isPro {
                            Image("pro_badge")
                                .padding(.trailing)
                        }
                    }
                }
                .padding([.leading, .bottom])
            }
    }
}

enum Level {
    case beginner
    case advance
}


//struct WorkoutScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        WorkoutScreen()
//    }
//}
#Preview {
    WorkoutScreen()
}
