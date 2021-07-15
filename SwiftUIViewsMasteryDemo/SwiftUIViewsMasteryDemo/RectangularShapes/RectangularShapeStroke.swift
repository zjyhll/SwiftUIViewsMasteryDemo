//
//  RectangularShapeStroke.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/16.
//

import SwiftUI

struct RectangularShapeStroke: View {
    var body: some View {
        VStack(spacing: 5) {
            Text("Rectangular Shapes")
                .font(.largeTitle)
            Text("Stroke (Outline)")
                .font(.title)
                .foregroundColor(.gray)
            Text("Use stroke to create outlines around shapes. Using .stroke (Color.purple)")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .layoutPriority(1)
            Rectangle()
                .stroke(Color.blue)
                .padding()
            Text(".stroke(Color.blue, lineWidth: 20)")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color.blue, lineWidth: 20)
                .padding()
            Text(".stroke(Color.purple, style: StrokeStyle(lineWidth: 10, dash: [15, 10]))")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .layoutPriority(1)
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, dash: [15, 25]))
                .padding()
        }
        .font(.title)
    }
}

struct RectangularShapeStroke_Previews: PreviewProvider {
    static var previews: some View {
        RectangularShapeStroke()
            .preferredColorScheme(.dark)
    }
}
