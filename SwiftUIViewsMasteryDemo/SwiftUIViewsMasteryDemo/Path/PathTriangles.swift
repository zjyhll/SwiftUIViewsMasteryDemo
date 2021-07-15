//
//  PathTriangles.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/15.
//

import SwiftUI

struct PathTriangles: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Path")
                .font(.largeTitle)
            Text("Triangles")
                .font(.title)
                .foregroundColor(.gray)
            Text("You can already create circular and rectangular shapes, so I'm not going to cover those. Let's make triangles instead.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.purple)
                .foregroundColor(.white)

            // Outline Triangle
            GeometryReader { geometry in
                Path { path in
                    let middle = geometry.frame(in: .local).midX
                    let width: CGFloat = 200
                    // start in the center
                    path.move(to: CGPoint(x: middle, y: 10))
                    path.addLine(to: CGPoint(x: middle + (width / 2), y: 170))
                    path.addLine(to: CGPoint(x: middle - (width / 2), y: 170))
                    path.closeSubpath() // connects last point to first point
                }
                .strokedPath(StrokeStyle(lineWidth: 4))
                .foregroundColor(Color.purple)
            }

            // Solid Triangle
            GeometryReader { geometry in
                Path { path in
                    let middle = geometry.frame(in: .local).midX
                    let width: CGFloat = 200
                    // start in the center
                    path.move(to: CGPoint(x: middle, y: 10))
                    path.addLine(to: CGPoint(x: middle + (width / 2), y: 170))
                    path.addLine(to: CGPoint(x: middle - (width / 2), y: 170))
                    path.closeSubpath() // connects last point to first point
                }
                .fill(Color.purple)
                .rotationEffect(Angle.degrees(90))
            }
        }
    }
}

// Notice that a path can be drawn right inside of a SwiftUI view.

// The GeometryReader is used to get coordinates (x and y) for the
// path functions.

// For triangles you only need two lines. The closeSubpath can draw
// your third line for you.

struct PathTriangles_Previews: PreviewProvider {
    static var previews: some View {
        PathTriangles()
    }
}
