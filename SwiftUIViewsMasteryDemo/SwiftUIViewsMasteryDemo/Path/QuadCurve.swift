//
//  QuadCurve.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/15.
//

import SwiftUI

struct QuadCurve: View {
    var body: some View {
        VStack(spacing: 20) {
            // This is the shape using the quad curve.
            RoundedBottomRectangle(curveOffset: 30)
                .fill(Color.purple)
                .frame(height: 120)
                .shadow(radius: 8)
                .overlay(
                    Text("Path")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(.top, 40)
                )
                .edgesIgnoringSafeArea(.top)

            Text("QuadCurve")
                .foregroundColor(.gray)
            Text("Here's an example of how you add a curve to your path.")
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(
                    // Here, the shape is being used as the background to
                    // another view.
                    // I'm using a negative number to make the curve go
                    // the other way.
                    RoundedBottomRectangle(curveOffset: -30)
                        .fill(Color.purple)
                        .shadow(radius: 4, y: 4)
                )

            Spacer()
        }
        .font(.title)
    }
}

struct RoundedBottomRectangle: Shape {
    // How far up or down you want the curve to extend
    var curveOffset: CGFloat = 10

    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.maxX, y: 0))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        // add a curve as you draw a line to the next point
        path.addQuadCurve(
            to: CGPoint(x: 0, y: rect.maxY),
            control: CGPoint(x: rect.midX, y: rect.maxY + curveOffset)
        )
        path.addLine(to: CGPoint.zero)
        return path
    }
}

// Using addQuadCurve is one of the easiest ways to add a curved line
// because you're just specifying one point for the line to stretch to.

// Specifying the control point creates a triangle between the start
// and end points and the line will stretch towards (but not touch)
// this control point.

struct QuadCurve_Previews: PreviewProvider {
    static var previews: some View {
        QuadCurve()
    }
}
