//
//  AngularGradientAppliedToCircles.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/16.
//

import SwiftUI

struct AngularGradientAppliedToCircles: View {
    var body: some View {
        let gradient = Gradient(colors: [.pink, .purple, .pink])
        let angularGradient = AngularGradient(gradient: gradient, center: .center, angle: .degrees(0))

        return VStack(spacing: 20) {
            Text("Angular Gradient")
                .font(.largeTitle)
            Text("With Circles")
                .font(.title)
                .foregroundColor(.gray)
            Text("You can fill circle shapes with gradients.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)

            HStack {
                Circle()
                    .fill(angularGradient)
                Ellipse()
                    .fill(angularGradient)
                Capsule()
                    .fill(angularGradient)
            }

            Text("You can also apply gradients to strokes.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)

            HStack {
                Circle()
                    .stroke(angularGradient, lineWidth: 10)
                Ellipse()
                    .strokeBorder(angularGradient, lineWidth: 10)
                Capsule()
                    .trim(from: 0.25, to: 1)
                    .stroke(angularGradient, style: StrokeStyle(lineWidth: 10, lineCap: .round))
            }
            .padding(.horizontal)

        }
        .font(.title)
    }
}

struct AngularGradientAppliedToCircles_Previews: PreviewProvider {
    static var previews: some View {
        AngularGradientAppliedToCircles()
            .preferredColorScheme(.dark)
    }
}
