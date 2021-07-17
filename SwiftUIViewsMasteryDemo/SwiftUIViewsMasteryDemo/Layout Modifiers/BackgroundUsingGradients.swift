//
//  BackgroundUsingGradients.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/17.
//

import SwiftUI

struct BackgroundUsingGradients: View {
    private var gradientColors = Gradient(
        colors: [Color("Theme1Accent"), Color.purple]
    )
    var body: some View {
        let linearGradient = LinearGradient(
            gradient: gradientColors,
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        return VStack(spacing: 20) {
            Text("Background")
                .font(.largeTitle)
            Text("Using Gradients")
                .foregroundColor(.gray)
            Text("Use the background modifier to apply gradients to views.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .layoutPriority(1)
            Text("Background gradients on shapes")
            Circle()
                .frame(width: 132, height: 44)
                .background(linearGradient)
            Text("Background gradients on controls")
            Button(action: {}) {
                Text("Button")
                    .padding()
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
            }
            .background(linearGradient)
            .cornerRadius(15)
            Text("Background gradients on layout views")
            HStack {
                Text("This is in an HStack")
                    .padding()
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity)
            .background(linearGradient)
        }
        .font(.title)
    }
}

struct BackgroundUsingGradients_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundUsingGradients()
    }
}
