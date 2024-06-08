//
//  BarGraph.swift
//  HyroxSocialClub
//
//  Created by Dhruv Shrivastava on 28/09/23.
//

import SwiftUI

import SwiftUI

struct Bar: Identifiable {
    let id = UUID()
    var name: String
    var day: String
    var value: Double
    var color: Color
    
    static var sampleBars: [Bar] {
        var tempBars = [Bar]()
        var color: Color = .green
        let days = ["Mon","Tue","Wed","Thu","Fri","Sat","Sun"]
        for i in 1...7 {
            let rand = Double.random(in: 20...200.0)
            if rand > 150 {
                color = .red
            } else if rand > 75 {
                color = .yellow
            } else {
                color = .green
            }
            let bar = Bar(name: "\(i)",day: days[i-1], value: rand, color: color)
            tempBars.append(bar)
        }
        return tempBars
    }
}

struct BarGraph: View {
    @State private var bars = Bar.sampleBars
    @State private var selectedID: UUID = UUID()
    @State private var text = "Info"
    
    var body: some View {
        VStack {
            
            HStack(alignment: .bottom) {
                ForEach(bars) { bar in
                    VStack {
                        ZStack {
                            Rectangle()
                                .foregroundColor(bar.color)
                                .frame(width: 25, height: bar.value, alignment: .bottom)
                                .opacity(selectedID == bar.id ? 0.5 : 1.0)
                                .cornerRadius(6)
                                
                        }
                        Text(bar.day)
                        
                    }
                    .frame(width: 40)
                    
                }
            }
            .frame(height:280, alignment: .bottom)
            .padding(20)
            .cornerRadius(6)
        }
    }
}
struct BarGraphSleep: View {
    @State private var bars = Bar.sampleBars
    @State private var selectedID: UUID = UUID()
    @State private var text = "Info"
    
    var body: some View {
        VStack {
            
            HStack(alignment: .bottom) {
                ForEach(bars) { bar in
                    VStack {
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color(hex: "f19898"))
                                .frame(width: 6, height: bar.value/3, alignment: .bottom)
                                .opacity(selectedID == bar.id ? 0.5 : 1.0)
                                .cornerRadius(6)
                                
                        }
                        
                    }
                    
                }
            }
            .padding(20)
            .cornerRadius(6)
        }
    }
}

struct BarGraph_Previews: PreviewProvider {
    static var previews: some View {
        BarGraph()
    }
}
