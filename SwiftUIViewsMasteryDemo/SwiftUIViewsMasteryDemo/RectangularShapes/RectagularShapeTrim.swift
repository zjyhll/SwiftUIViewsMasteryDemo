//
//  RectagularShapeTrim.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/16.
//

import SwiftUI

struct RectagularShapeTrim: View {
    @State private var circleProgress: CGFloat = 1.0
    private var circlePercentage: Int { Int(circleProgress * 100.0) }
    var body: some View {
        VStack(spacing: 30) {
            Text("Rectangular Shapes")
                .font(.largeTitle)
            Text("Trim Function")
                .font(.title)
                .foregroundColor(.gray)
            Text("Trim your shape to only show a percentage of it.")
                .frame(maxWidth: .infinity, minHeight: 70)
                .padding()
                .background(Color.blue)

            Rectangle()
                .trim(from: 0, to: circleProgress)
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 40, lineCap: .round))
                .frame(height: 300)
                .overlay(
                    Text("\(circlePercentage)%")
                        .font(.largeTitle)
                        .foregroundColor(.gray)
                )
                .padding(40)

            VStack {
                Text("Progress")
                HStack {
                    Text("0%")
                    Slider(value: $circleProgress)
                    Text("100%")
                }
            }
            .padding()
        }
        .font(.title)
    }
}

struct RectagularShapeTrim_Previews: PreviewProvider {
    static var previews: some View {
        RectagularShapeTrim()
    }
}
