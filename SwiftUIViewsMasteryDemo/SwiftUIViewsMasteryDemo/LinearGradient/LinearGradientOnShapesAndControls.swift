//
//  LinearGradientOnShapesAndControls.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/16.
//

import SwiftUI

struct LinearGradientOnShapesAndControls: View {
    let gradientColors = Gradient(colors: [.pink, .purple])

    var body: some View {
        let linearGradient = LinearGradient(gradient: gradientColors, startPoint: .top, endPoint: .bottom)
        return VStack(spacing: 20) {
            Text("LinearGradient")
                .font(.largeTitle)
            Text("On Shapes & Controls")
                .foregroundColor(.gray)
            Text("You can apply gradients to shapes and controls using the fill and background modifiers respectively.")
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.pink)
                .shadow(radius: 10)

            Capsule()
                .fill(linearGradient)
                .frame(height: 100)
                .padding()

            Button(action: {}) {
                Text("Button")
                    .foregroundColor(.white)
                    .padding()
            }
            .background(linearGradient)
            .cornerRadius(15)

            Text("Use strokeBorder to apply a gradient to the borders of shapes.")
                .padding(.horizontal)
            Circle()
                .strokeBorder(linearGradient, lineWidth: 20)
                .frame(height: 200)
        }
        .font(.title)
    }
}

struct LinearGradientOnShapesAndControls_Previews: PreviewProvider {
    static var previews: some View {
        LinearGradientOnShapesAndControls()
            .preferredColorScheme(.dark)
    }
}
