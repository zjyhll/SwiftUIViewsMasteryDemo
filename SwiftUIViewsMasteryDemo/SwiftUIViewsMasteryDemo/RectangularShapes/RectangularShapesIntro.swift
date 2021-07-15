//
//  RectangularShapesIntro.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/16.
//

import SwiftUI

// Rectangular shapes include the Rectangle and the RoundedRectangle.
// I have grouped them together because they all operate the same way
// and behave the same with modifiers. The only difference is the
// shape of the views they produce. Unlike Paths, you can see rectangular
// shapes because they default to the fill color black.

// These are push-out views.

struct RectangularShapesIntro: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Rectangular Shapes")
                .font(.largeTitle)
            Text("Introduction")
                .foregroundColor(.gray)
            Text("There are two rectangular shapes available in SwiftUI.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(Color.white)

            Text("Rectangle")

            Rectangle()
                .padding()

            Text("Rounded Rectangle")

            RoundedRectangle(cornerRadius: 20)
                .padding()

            Text("(Notice the default colors are black)")
                .font(.body)
                .padding()
        }
        .font(.title)
    }
}

struct RectangularShapesIntro_Previews: PreviewProvider {
    static var previews: some View {
        RectangularShapesIntro()
            .preferredColorScheme(.dark)
    }
}
