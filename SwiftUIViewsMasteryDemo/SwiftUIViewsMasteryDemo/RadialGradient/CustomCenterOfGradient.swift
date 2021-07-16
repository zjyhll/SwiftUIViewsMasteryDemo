//
//  CustomCenterOfGradient.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/16.
//

import SwiftUI

struct CustomCenterOfGradient: View {
    var body: some View {
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [.white, Color("Theme5BackgroundColor")]),
                center: UnitPoint(x: 0.5, y: 0.2),
                startRadius: 10,
                endRadius: 420
            )
            .edgesIgnoringSafeArea(.vertical)
            VStack(spacing: 20) {
                Rectangle()
                    .fill(RadialGradient(
                            gradient: Gradient(colors: [.white, Color("Theme5DarkAccentColor")]),
                            center: .bottomTrailing,
                            startRadius: 0,
                            endRadius: 15
                        )
                    )
                    .frame(width: 50, height: 50)
                    .rotationEffect(.degrees(45))
                    .shadow(color: .gray, radius: 20, x: 0, y: 20)
                    .padding()

                Text("RadialGradient")
                    .font(.largeTitle)
                Text("As Background")
                    .foregroundColor(.gray)
                Text("You can also customize the center point by using the UnitPoint initializer to set the X and Y values. The values range from 0 to 1 and are relative to the size of the parent container. Think of them as percentage where 0.5 would be 50% of the width or height of the parent. In this example the center is 50% of the width and down 20% of the height.")
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

struct CustomCenterOfGradient_Previews: PreviewProvider {
    static var previews: some View {
        CustomCenterOfGradient()
    }
}
