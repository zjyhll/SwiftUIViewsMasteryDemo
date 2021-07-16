//
//  RadialGradientAsBackground.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/16.
//

import SwiftUI

// "Radial" describes something, like light, that starts from a common center
// point and spreads outward. With radial gradients, you have colors that
// spread out from a center point and change into other colors.

// The positioning of a radial gradient is different than the other gradients.
// Radial gradients have a center point. You can change the location of where
// this center point will be by using the UnitPoint struct with its descriptive
// property names: center, top, bottom, leading, trailing, topLeading,
// topTrailing, bottomLeading, bottomTrailing, etc.

struct RadialGradientAsBackground: View {
    var body: some View {
        ZStack {
            // use radial gradient as background view
            RadialGradient(
                gradient: Gradient(colors: [.white, Color("Theme5BackgroundColor")]),
                center: .center,
                startRadius: 10,
                endRadius: 420
            )
            .edgesIgnoringSafeArea(.vertical)

            VStack(spacing: 20) {
                Text("RadialGradient")
                    .font(.largeTitle)
                Text("As Background")
                    .foregroundColor(.gray)
                Text("The RadialGradient is a view that can live on its own. Here, it is used as the background.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("Theme5DarkAccentColor"))
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .font(.title)
    }
}

struct RadialGradientIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        RadialGradientAsBackground()
    }
}
