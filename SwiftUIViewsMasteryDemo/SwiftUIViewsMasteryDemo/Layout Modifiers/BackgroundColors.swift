//
//  BackgroundColors.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/17.
//

import SwiftUI

// The background modifer can be used to set more than just a color behind another view,
// it can be used to set a ShapeStyle behind a view. A ShapeStyle is any object that
// conforms to the ShapeStyle protocol. And the Color view does conform to the ShapeStyle
// protocol.
// Other objects that conform to ShapeStyle include AngularGradient, ImagePaint,
// LinearGradient, and RadialGradient. All of these ShapeStyle (or "Paints") can be applied
// to views with the background modifier. Not only can ShapeStyles be applied with the
// background modifier but the circular and rectangular shapes can too.

struct BackgroundColors: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Background")
                .font(.largeTitle)
            Text("Colors")
                .foregroundColor(.gray)
            Text("The background modifier is commonly used to set colors behind controls. This text view has Color.yellow set as the background.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)

            Text("Background colors on shapes")
            Circle()
                .frame(width: 132, height: 44)
                .background(Color.yellow)
            Text("Background colors on controls")
            Button(action: {}) {
                Text("Button")
            }
            .padding()
            .background(Color.yellow)

            Text("Background colors on layout views")

            HStack {
                Text("This is in an HStack")
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.yellow)
        }
        .font(.title)
    }
}

// Notice you cannot set the color with the enum shorthand such as .background(.yellow).
// That is because the background modifier is not looking for a Color type for the
// parameter. It is looking for some view.

struct BackgroundColors_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundColors()
    }
}
