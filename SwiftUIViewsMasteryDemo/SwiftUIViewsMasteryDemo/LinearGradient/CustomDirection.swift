//
//  CustomDirection.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/16.
//

import SwiftUI

struct CustomDirection: View {
    let gradientColors = Gradient(colors: [.pink, .black])

    var body: some View {
        VStack(spacing: 20) {
            Text("LinearGradient")
                .font(.largeTitle)
            Text("Gradient Direction")
                .font(.title)
                .foregroundColor(.gray)
            Text("If you don't want to use the preset UnitPoints then you can create different points using an X and Y coordinate. The X and Y values will range from 0 to 1.")
                .frame(maxWidth: .infinity)
                .font(.title)
                .padding()
                .background(Color.pink)

            HStack(spacing: 20) {
                Rectangle()
                    .fill(LinearGradient(
                            gradient: gradientColors,
                            startPoint: UnitPoint(x: 0, y: 0.25),
                            endPoint: UnitPoint(x: 1, y: 0.75)
                        )
                    )
                    .frame(width: 100, height: 100)
                Rectangle()
                    .fill(LinearGradient(
                            gradient: gradientColors,
                        startPoint: UnitPoint(x: 0.65, y: 0.65),
                        endPoint: UnitPoint(x: 0.8, y: 0.75)
                        )
                    )
                    .frame(width: 100, height: 100)
                Rectangle()
                    .fill(LinearGradient(
                            gradient: gradientColors,
                        startPoint: UnitPoint(x: 0.9, y: 0.8),
                        endPoint: UnitPoint(x: 0.25, y: 0.15)
                        )
                    )
                    .frame(width: 100, height: 100)
            }
        }
    }
}

struct CustomDirection_Previews: PreviewProvider {
    static var previews: some View {
        CustomDirection()
            .preferredColorScheme(.dark)
    }
}
