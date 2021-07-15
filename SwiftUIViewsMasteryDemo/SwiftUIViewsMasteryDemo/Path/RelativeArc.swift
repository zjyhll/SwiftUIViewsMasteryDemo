//
//  RelativeArc.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/16.
//

import SwiftUI

struct RelativeArc: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Path")
                .font(.largeTitle)
            Text("Relative Arc")
                .foregroundColor(.gray)
            Text("Use .addRelativeArc to create a portion of a circle.")
                .frame(maxWidth: .infinity)
                .padding()
                .padding(.bottom)
                .background(Color.purple)
                .foregroundColor(.white)

            VStack(spacing: 0) {
                // This is the custom shape that is using the relative arc.
                DomeShape()
                    .fill(Color.purple)
                Rectangle()
                    .fill(Color.purple)
            }
            .padding(.horizontal)
        }
        .font(.title)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct DomeShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRelativeArc(
            center: CGPoint(x: rect.midX, y: rect.maxY),
            radius: rect.midX,
            startAngle: .degrees(180),
            delta: .degrees(180)
        )
        return path
    }
}

struct RelativeArc_Previews: PreviewProvider {
    static var previews: some View {
        RelativeArc()
    }
}
