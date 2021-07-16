//
//  StartRadius.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/16.
//

import SwiftUI

struct StartRadius: View {
    @State private var startRadius: CGFloat = 10.0

    var body: some View {
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [.white, Color("Theme5BackgroundColor")]),
                center: .center,
                startRadius: startRadius,
                endRadius: 320
            )
            .edgesIgnoringSafeArea(.vertical)

            VStack(spacing: 20) {
                Text("RadialGradient")
                    .font(.largeTitle)
                Text("Start Radius")
                    .foregroundColor(.gray)
                Text("Radius measures the distance from the center of a circle on outward. You set a startRadius to determine how far the first color should expand out from the center.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("Theme5DarkAccentColor"))
                    .foregroundColor(.white)
                Spacer()
                Text("Start Radius: \(Int(startRadius))")
                HStack {
                    Text("0")
                    Slider(value: $startRadius, in: 0...250)
                    Text("250")
                }
                .padding()
            }
            .font(.title)
        }
    }
}

struct StartRadius_Previews: PreviewProvider {
    static var previews: some View {
        StartRadius()
    }
}
