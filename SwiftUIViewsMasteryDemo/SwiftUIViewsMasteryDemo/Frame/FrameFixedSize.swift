//
//  FrameFixedSize.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by 刘勇刚 on 2021/7/17.
//

import SwiftUI

// When laying out your screen, SwiftUI does a great job of spacing and positioning.
// The default placements combined with Spacer views and padding modifiers can go
// a long way to help way to help you create your ideal layouts.

// But when you want to really take control of sizing your controls, the frame modifier
// is there to help!

struct FrameFixedSize: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Frame")
                .font(.largeTitle)
            Text("Fixed Sizes")
                .foregroundColor(.gray)
            Text("You can use the frame modifier to set fixed sizes.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .font(.title)
                .layoutPriority(1)

            Text("Original Size")
            Image("FemaleProfile")
                .clipShape(Circle())
            Text("Setting the width and height")
            HStack {
                Image("FemaleProfile")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                Image("FemaleProfile")
                    .resizable()
                    .frame(width: 75, height: 75)
                    .clipShape(Circle())
                Image("FemaleProfile")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
            }

            VStack {
                Text("You can combine aspect ratio with frame")
                Image("FemaleProfile")
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(height: 100)
                    .clipShape(Circle())

                Text("Images will stretch to fit the frame you specify")

                Image("FemaleProfile")
                    .resizable()
                    .frame(width: 75, height: 50)
                Text("(Photo by: Renato Abati)")
                    .font(.caption)
            }
        }
    }
}

struct FrameFixedSize_Previews: PreviewProvider {
    static var previews: some View {
        FrameFixedSize()
    }
}
