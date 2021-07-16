//
//  AngularGradientIntroduction.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/16.
//

import SwiftUI

struct AngularGradientIntroduction: View {
    var body: some View {
        let gradient = Gradient(colors: [.pink, .purple, .pink])
        let angularGradient = AngularGradient(gradient: gradient, center: .center, angle: .degrees(0))
        let nonCenteredAngularGradient = AngularGradient(gradient: gradient, center: .center, angle: .degrees(0))

        return VStack(spacing: 20) {
            Text("Angular Gradient")
                .font(.largeTitle)
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            Text("Angular gradients circle around a centered point")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)

            Rectangle()
                .fill(angularGradient)

            Text("The center point can be changed. Here, it is moved to the bottom trailing:")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)

            Rectangle()
                .fill(nonCenteredAngularGradient)
        }
        .font(.title)
    }
}

// Tip: For better blending, use the same color to start and end Gradient's
// color array.

struct AngularGradientIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        AngularGradientIntroduction()
            .preferredColorScheme(.dark)
    }
}
