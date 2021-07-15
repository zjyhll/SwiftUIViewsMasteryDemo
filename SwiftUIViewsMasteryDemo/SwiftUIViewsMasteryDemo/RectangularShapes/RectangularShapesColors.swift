//
//  RectangularShapesColors.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/16.
//

import SwiftUI

struct RectangularShapesColors: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Rectangular Shapes")
                .font(.largeTitle)
            Text("Colors")
                .font(.title)
                .foregroundColor(.gray)

            Text("Rectangular shapes can have shape styles applied to them. Color is considered a shape style along with different gradient patterns.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .layoutPriority(1)

            Text("Using .fill(Color.pink)")
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.pink)
                .padding()

            Text("You can also use .foregroundColor(Color.green)")
            Rectangle()
                .foregroundColor(Color.green)
                .padding()
            Text("Using .background(Color.blue)")
            RoundedRectangle(cornerRadius: .infinity)
                .background(Color.blue)
                .padding()
        }
        .font(.title)
    }
}

struct RectangularShapesColors_Previews: PreviewProvider {
    static var previews: some View {
        RectangularShapesColors()
            .preferredColorScheme(.dark)
    }
}
