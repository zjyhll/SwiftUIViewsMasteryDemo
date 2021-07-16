//
//  RectangularShapeSizeModifier.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by 刘勇刚 on 2021/7/16.
//

import SwiftUI

struct RectangularShapeSizeModifier: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Rectangular Shapes")
                .font(.largeTitle)
            Text("Size Modifier")
                .font(.title)
                .foregroundColor(.gray)
            Text("You can also use the shape's size modifier to define a height and width. Take warning, though, using size no longer aligns shapes to the center.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .layoutPriority(1)

            Group {
                Text("Rectangular using .size(width: 80, height: 80)")
                Rectangle()
                    .size(width: 80, height: 80)
                    .background(Color.blue)
                Text("RoundedRectangular using .size(width: 200, height: 180)")
                RoundedRectangle(cornerRadius: 20)
                    .size(width: 200, height: 180)
                    .background(Color.blue)
            }
            .padding(.horizontal)
        }
        .font(.title)
    }
}

struct RectangularShapeSizeModifier_Previews: PreviewProvider {
    static var previews: some View {
        RectangularShapeSizeModifier()
            .preferredColorScheme(.dark)
    }
}
