//
//  BackgroundUsingShape.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/17.
//

import SwiftUI

struct BackgroundUsingShape: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Background")
                .font(.largeTitle)
            Text("Using Shapes")
                .foregroundColor(.gray)
            Text("Use the background modifier to apply shapes to the background of views. Shapes include the Circle, Capsule, Ellipse, Rectangle and RoundedRectangle.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
            Text("Background shapes on shapes")
            Circle()
                .frame(width: 132, height: 44)
                .foregroundColor(.yellow)
                .background(
                    Circle()
                        .foregroundColor(.black)
                        .offset(x: 3, y: 3)
                )
            Text("Background shapes on controls")
            Button(action: {}) {
                Text("Button")
                    .padding(.horizontal)
            }
            .padding()
            .background(
                Capsule()
                    .foregroundColor(.yellow)
            )
            Text("Background shapes on layout views")
            HStack {
                Text("This is in an HStack")
                    .foregroundColor(.white)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                Ellipse().foregroundColor(.yellow)
            )
        }
        .font(.title)
    }
}

struct BackgroundUsingShape_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundUsingShape()
    }
}
