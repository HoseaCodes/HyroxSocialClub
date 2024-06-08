//
//  ProgressView.swift
//  HyroxSocialClub
//
//  Created by Dhruv Shrivastava on 08/10/23.
//

import SwiftUI
import Charts

struct ProgresssView: View {
    @State var value: Int = 0
    var body: some View {
        ScrollView {
            HStack {
                Button {
                    
                } label: {
                    Image("back_icon")
                }
                Text("Profile")
                    .font(.title2)
                    .bold()
                    .foregroundStyle(.black)
                    .padding(.bottom, 10)
                Spacer()
            }
            .padding(.top, 50)
            CustomWeekHeader()
            HStack {
                Text("Today Report")
                    .font(.title2)
                    .bold()
                Spacer()
            }
            .padding()
            HStack {
                Text("Stats")
                    .font(.title3)
                    .bold()
                Spacer()
            }
            .padding()
            HStack {
                VStack(spacing: 20) {
                    Text("1000")
                        .foregroundStyle(.gray)
                    Text("800")
                        .foregroundStyle(.gray)
                    Text("600")
                        .foregroundStyle(.gray)
                    Text("400")
                        .foregroundStyle(.gray)
                    Text("200")
                        .foregroundStyle(.gray)
                    Text("0")
                        .foregroundStyle(.gray)
                }
                .padding(.trailing, -20)
                        Chart {
                            AreaMark(
                                x: .value("Mount", "Sun"),
                                y: .value("Value", 5)
                            )
                            .foregroundStyle(Color(hex: "F9D9D9"))
                            AreaMark (
                                x: .value("Mount", "Mon"),
                                y: .value("Value", 4)
                            )
                            AreaMark(
                                x: .value("Mount", "Tue"),
                                y: .value("Value", 7)
                            )
                            AreaMark(
                                x: .value("Mount", "Wed"),
                                y: .value("Value", 5)
                            )
                            AreaMark(
                                x: .value("Mount", "Thu"),
                                y: .value("Value", 7)
                            )
                            AreaMark(
                                x: .value("Mount", "Fri"),
                                y: .value("Value", 3)
                            )
                            AreaMark(
                                x: .value("Mount", "Sat"),
                                y: .value("Value", 8)
                            )
                            LineMark(
                                x: .value("Mount", "Sun"),
                                y: .value("Value", 5)
                            )
                            .foregroundStyle(.red)
                            LineMark (
                                x: .value("Mount", "Mon"),
                                y: .value("Value", 4)
                            )
                            LineMark(
                                x: .value("Mount", "Tue"),
                                y: .value("Value", 7)
                            )
                            LineMark(
                                x: .value("Mount", "Wed"),
                                y: .value("Value", 5)
                            )
                            LineMark(
                                x: .value("Mount", "Thu"),
                                y: .value("Value", 7)
                            )
                            LineMark(
                                x: .value("Mount", "Fri"),
                                y: .value("Value", 3)
                            )
                            LineMark(
                                x: .value("Mount", "Sat"),
                                y: .value("Value", 8)
                            )
                            
                        }
                        .frame(height: 200)
                        .padding()
                        .tint(Color(hex: "F9D9D9"))
                        .chartYAxis(.hidden)
                        
                    }
            .padding()
            HStack(spacing: 30) {
                VStack {
                    HStack {
                        Text("Sleep")
                            .bold()
                        Spacer()
                        Image(systemName: "moon.fill")
                            .resizable()
                            .frame(width: 14, height: 16)
                            .foregroundColor(.red)
                    }
                    .padding([.leading, .trailing, .top])
                    BarGraphSleep()
                        .frame(width: 116, height: 47)
                    HStack {
                        Text("6 hours")
                            .padding(10)
                            .foregroundColor(.gray)
                            .padding(.bottom, 10)
                        Spacer()
                    }
                }
                .frame(width: 153, height: 132)
                .background(.white)
                .cornerRadius(12)
                .shadow(radius: 5)
                VStack {
                    HStack {
                        Text("Heart")
                            .bold()
                        Spacer()
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 14, height: 16)
                            .foregroundColor(.red)
                    }
                    .padding([.leading, .trailing, .top])
                    Image("heartRate")
                    HStack {
                        Text("95 Bpm")
                            .padding(10)
                            .foregroundColor(.gray)
                            .padding(.bottom, 10)
                        Spacer()
                    }
                }
                .frame(width: 153, height: 132)
                .background(.white)
                .cornerRadius(12)
                .shadow(radius: 5)
            }
            HStack {
                Text("Workout Progress")
                    .font(.title2)
                    .bold()
                Spacer()
            }
            .padding()
            VStack {
                        Chart {
                            AreaMark(
                                x: .value("Mount", "Sun"),
                                y: .value("Value", 5)
                            )
                            .foregroundStyle(Color(hex: "F9D9D9"))
                            AreaMark (
                                x: .value("Mount", "Mon"),
                                y: .value("Value", 4)
                            )
                            AreaMark(
                                x: .value("Mount", "Tue"),
                                y: .value("Value", 7)
                            )
                            AreaMark(
                                x: .value("Mount", "Wed"),
                                y: .value("Value", 5)
                            )
                            AreaMark(
                                x: .value("Mount", "Thu"),
                                y: .value("Value", 7)
                            )
                            AreaMark(
                                x: .value("Mount", "Fri"),
                                y: .value("Value", 3)
                            )
                            AreaMark(
                                x: .value("Mount", "Sat"),
                                y: .value("Value", 8)
                            )
                            LineMark(
                                x: .value("Mount", "Sun"),
                                y: .value("Value", 5)
                            )
                            .foregroundStyle(.red)
                            LineMark (
                                x: .value("Mount", "Mon"),
                                y: .value("Value", 4)
                            )
                            LineMark(
                                x: .value("Mount", "Tue"),
                                y: .value("Value", 7)
                            )
                            LineMark(
                                x: .value("Mount", "Wed"),
                                y: .value("Value", 5)
                            )
                            LineMark(
                                x: .value("Mount", "Thu"),
                                y: .value("Value", 7)
                            )
                            LineMark(
                                x: .value("Mount", "Fri"),
                                y: .value("Value", 3)
                            )
                            LineMark(
                                x: .value("Mount", "Sat"),
                                y: .value("Value", 8)
                            )
                            
                        }
                        .frame(height: 200)
                        .padding()
                        .tint(Color(hex: "F9D9D9"))
                        .chartXAxis(.hidden)
                        
                    }
            HStack(spacing: 19) {
                Text("Sun")
                    .foregroundStyle(.gray)
                Text("Mon")
                    .foregroundStyle(.gray)
                Text("Tue")
                    .foregroundStyle(.gray)
                Text("Wed")
                    .foregroundStyle(.gray)
                Text("Thr")
                    .foregroundStyle(.gray)
                Text("Fri")
                    .foregroundStyle(.gray)
                Text("Sat")
                    .foregroundStyle(.gray)
            }
            .padding(.top, -10)
            HStack(spacing: 30) {
                VStack {
                    Text("Training time")
                        
                    CircularProgressView(progress: 0.8)
                        .frame(width: 74, height: 74)
                        .overlay {
                            Text("80%")
                        }
                }
                .frame(width: 153, height: 132)
                .background(.white)
                .cornerRadius(12)
                .shadow(radius: 5)
                VStack {
                    HStack {
                        Image("shoes_icon")
                        Text("Shoes")
                            .bold()
                    }
                    Text("999/2000")
                        .font(.caption)
                    ProgressView(value: .init(0.8))
                        .progressViewStyle(.linear)
                        .frame(width: 93.73, height: 11)
                        .tint(Color(hex: "F9D9D9"))
                }
                .frame(width: 153, height: 132)
                .background(.white)
                .cornerRadius(12)
                .shadow(radius: 5)
            }
//            HStack {
//                Text("Active calories")
//                    .font(.title2)
//                    .bold()
//                Spacer()
//                    Text("645 Cal")
//                        .foregroundColor(.red)
//                        .bold()
//
//            }
//            .padding()
//            .padding(.bottom, 80)
        }
        .ignoresSafeArea()
    }
}

struct ProgresssView_Previews: PreviewProvider {
    static var previews: some View {
        ProgresssView()
    }
}
