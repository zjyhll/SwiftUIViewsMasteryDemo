//
//  EndRadius.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/16.
//

import SwiftUI

struct EndRadius: View {
    @State private var endRadius: CGFloat = 200.0
    var body: some View {
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [.white, Color("Theme5BackgroundColor")]),
                center: .center,
                startRadius: 10,
                endRadius: endRadius
            )
            .edgesIgnoringSafeArea(.vertical)

            VStack(spacing: 20) {
                Text("RadialGradient")
                    .font(.largeTitle)
                Text("End Radius")
                    .foregroundColor(.gray)
                Text("The end radius determines the distance of the gradient from the start radius.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("Theme5DarkAccentColor"))
                    .foregroundColor(.white)

                Spacer()

                Text("End Radius: \(Int(endRadius))")
                HStack {
                    Text("50")
                    Slider(value: $endRadius, in: 50...400)
                    Text("400")
                }
                .padding()
            }
            .font(.title)
        }
    }
}

struct EndRadius_Previews: PreviewProvider {
    static var previews: some View {
        EndRadius()
    }
}
