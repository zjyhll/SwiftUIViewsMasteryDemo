//
//  PathIntroduction.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/15.
//

import SwiftUI

// Apple defines a "path" as the outline of a 2D shape.

// You use a path to draw lines or to describe how this two-dimensional shape
// should look. The lines or shapes you describe will not be visible untill
// you modify them with strokes or fills.

struct PathIntroduction: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Path")
                .font(.largeTitle)
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            Text("A Path by itself is not a view. You can modify a path to make it a view though.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)

            Text("You can't see this path because no modifier is loaded:")

            Path { path in
                // set the starting point
                path.move(to: CGPoint(x: 10, y: 10))
                path.addLine(to: CGPoint(x: 300, y: 10))
            }

            Text("Let's draw a path and modify it with a red stroke:")

            Path { path in
                path.move(to: CGPoint(x: 10, y: 10))
                path.addLine(to: CGPoint(x: 200, y: 10))
            }
            .strokedPath(StrokeStyle(lineWidth: 5))
            .foregroundColor(.red)
            Text("let's create our own divider:")
            
            MyDivider(lineWidth: 5, color: .purple)
        }
        .font(.title)
    }
}

struct MyDivider: View {
    var lineWidth: CGFloat = 1
    var color: Color = Color.secondary
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                // A path object is created and it uses the move function to set
                // the starting point and then adds a line to with a destination
                // point.
                path.move(to: CGPoint(x: 10, y: 10))
                path.addLine(to: CGPoint(x: geometry.size.width - 10, y: 10))
            }
            .strokedPath(StrokeStyle(lineWidth: lineWidth, lineCap: CGLineCap.round))
            .foregroundColor(color)
        }
    }
}

struct PathIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        PathIntroduction()
    }
}
