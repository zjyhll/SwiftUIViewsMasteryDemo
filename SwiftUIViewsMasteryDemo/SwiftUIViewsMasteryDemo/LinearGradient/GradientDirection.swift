//
//  GradientDirection.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by 刘勇刚 on 2021/7/16.
//

import SwiftUI

struct GradientDirection: View {
    let gradientColors = Gradient(colors: [.pink, .black])

    var body: some View {
        VStack(spacing: 20) {
            Text("LinearGradient")
                .font(.largeTitle)
            Text("Gradient Direction")
                .font(.title)
                .foregroundColor(.gray)
            Text("Gradient direction is set using the startPoint and endPoint parameters. You use the UnitPoint type for the parameter values. Points include:")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.pink)
            HStack(spacing: 20) {
                Rectangle()
                    .fill(LinearGradient(
                            gradient: gradientColors,
                            startPoint: .leading,
                            endPoint: .bottom
                        )
                    )
                    .frame(width: 100, height: 100)
                Rectangle()
                    .fill(LinearGradient(
                            gradient: gradientColors,
                            startPoint: .bottomLeading,
                            endPoint: .topTrailing
                        )
                    )
                    .frame(width: 100, height: 100)
                Rectangle()
                    .fill(LinearGradient(
                            gradient: gradientColors,
                            startPoint: .bottomTrailing,
                            endPoint: .leading
                        )
                    )
                    .frame(width: 100, height: 100)
            }

        }
    }
}

struct GradientDirection_Previews: PreviewProvider {
    static var previews: some View {
        GradientDirection()
            .preferredColorScheme(.dark)
    }
}
