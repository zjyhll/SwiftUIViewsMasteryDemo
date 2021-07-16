//
//  RadialGradientAppliedToShapes.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/16.
//

import SwiftUI

struct RadialGradientAppliedToShapes: View {
    var body: some View {
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [.white, Color("Theme5BackgroundColor")]),
                center: .center,
                startRadius: 10,
                endRadius: 420
            )
            .edgesIgnoringSafeArea(.vertical)

            VStack(spacing: 40) {
                Rectangle()
                    .fill(RadialGradient(
                            gradient: Gradient(colors: [.white, Color("Theme5DarkAccentColor")]),
                            center: .center,
                            startRadius: 0,
                            endRadius: 15
                        )
                    )
                    .frame(width: 80, height: 80)
                    .rotationEffect(.degrees(45))
                    .shadow(color: .gray, radius: 20, x: 0, y: 20)
                    .padding(30)

                Text("RadialRadient")
                    .font(.largeTitle)
                Text("Applied to Shapes")
                    .foregroundColor(.gray)
                Text("Like all gradients, radial gradients implement the ShapesStyle protocol. This means it can be applied to shapes using the fill modifier. A new radial gradient is applied to the rectangle above.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("Theme5DarkAccentColor"))
                    .foregroundColor(.white)
                Spacer()
            }
            .font(.title)
        }
    }
}

struct RadialGradientAppliedToShapes_Previews: PreviewProvider {
    static var previews: some View {
        RadialGradientAppliedToShapes()
    }
}
