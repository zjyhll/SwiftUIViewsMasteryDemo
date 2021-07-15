//
//  UsingUIKitCGPath.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by 刘勇刚 on 2021/7/16.
//

import SwiftUI

// In this example, a custom shape object is created in which you can specify
// the corner radius and which corners you want rounded.

// The UIRectCorner object allows you to easily specify:
// - topLeft
// - topRight
// - bottomLeft
// - bottomRight
// - allCorners

// After a UIKit bezier path is created, you convert it to a Core Graphics
// path and pass it into the SwiftUI Path initializer.

struct RoundedCorners: Shape {
    var cornerRadius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: cornerRadius, height: cornerRadius)
        )
        // Path can accept Core Graphic Paths
        return Path(path.cgPath)
    }
}

struct UsingUIKitCGPath: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Path")
                .font(.largeTitle)
            Text("Using UIKit CGPath")
                .foregroundColor(.gray)
            Text("You may want to use existing UIkit path objects and functions that SwiftUI doesn't have yet. SwiftUI's Path has an initializer that accepts a Core Graphics Path.")
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(Color.purple)

            RoundedCorners(cornerRadius: 20, corners: [.topRight, .bottomRight])
                .fill(Color.purple)
                .frame(height: 80)
                .padding([.trailing, .top], 50)
            RoundedCorners(cornerRadius: 40, corners: [.topRight, .bottomLeft])
                .fill(Color.purple)
                .padding(.horizontal, 100)
                .padding(.top, 50)

            Spacer()

            VStack {
                HStack {
                    Image(systemName: "info.circle")
                        .padding(.leading)
                    Text("More info")
                    Spacer()
                }
                .padding(.top)
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: 75)
            .foregroundColor(.white)
            // use the custom shape as the background
            // Use your new RoundedCorners view to set
            // which corner you want rounded.
            .background(
                RoundedCorners(
                    cornerRadius: 30,
                    corners: [.topLeft]
                )
                .fill(Color.purple)
            )
            .padding(.leading, 50)
        }
        .font(.title)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct UsingUIKitCGPath_Previews: PreviewProvider {
    static var previews: some View {
        UsingUIKitCGPath()
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (9.7-inch)"))
    }
}
