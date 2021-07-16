//
//  LinearGradientIntroduction.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/16.
//

import SwiftUI

// A LinearGradient allows you to specify a start point and an end point for the
// gradient direction. For example, you can tell the gradient to start in the top
// right corner and go down to the bottom left corner of the view.
// You can specify the points by using the UnitPoint struct which has descriptive
// property names such as top, bottom, bottomLeading, topTrailing, etc.
struct LinearGradientIntroduction: View {
    var body: some View {
        let gradientColors = Gradient(colors: [.pink, .purple])

        return ZStack {
            LinearGradient(gradient: gradientColors, startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.vertical)

            VStack(spacing: 20) {
                Text("LinearGradient")
                    .font(.largeTitle)
                Text("Introduction")
                    .font(.title)
                    .foregroundColor(.white)
                Text("When creating a gradient, you can specify an array of colors and start and end points to establish the direction of the gradient.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .font(.title)
                    .background(Color.red)
                    .shadow(radius: 10)
            }
        }
    }
}

struct LinearGradientIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        LinearGradientIntroduction()
    }
}
