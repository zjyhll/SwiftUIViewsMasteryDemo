//
//  ColorLocation.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by 刘勇刚 on 2021/7/16.
//

import SwiftUI

struct ColorLocation: View {
    var body: some View {
        let gradientColors = Gradient(stops: [
            Gradient.Stop(color: .red, location: 0),
            Gradient.Stop(color: .orange, location: 0.75),
            Gradient.Stop(color: .yellow, location: 1),
        ])
        let linearGradient = LinearGradient(
            gradient: gradientColors,
            startPoint: .top,
            endPoint: .bottom
        )

        return VStack(spacing: 20) {
            Text("Linear Gradient")
                .font(.largeTitle)
            Text("Color Location")
                .font(.title)
                .foregroundColor(.gray)
            Text("By default, colors in a gradient are spaced. But you can customize the color 'stops' or location when you setup the Gradient object.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.pink)
                .foregroundColor(.black)
                .font(.title)

            HStack {
                VStack {
                    Text("0")
                    Spacer()
                    Text("0.75")
                        .padding(.bottom, 50)
                    Text("1")
                }
                Rectangle()
                    .fill(linearGradient)
            }
            .frame(height: 300)
            .padding()
        }
    }
}

struct ColorLocation_Previews: PreviewProvider {
    static var previews: some View {
        ColorLocation()
            .preferredColorScheme(.dark)
    }
}
