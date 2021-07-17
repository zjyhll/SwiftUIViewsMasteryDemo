//
//  FrameControlsAndShapes.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/17.
//

import SwiftUI

struct FrameControlsAndShapes: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Frame")
                .font(.largeTitle)
            Text("Controls & Shapes")
                .font(.title)
                .foregroundColor(.gray)

            Text("You can observe two behaviors when it comes to sizes of views. Some views push out to fill all available space. Some views pull in to be as small as possible fit their content. You can use frames to change these behaviors.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .font(.title)

            Text("Shapes push out. Use frames to pull them in:")
            HStack {
                Capsule()
                    .foregroundColor(.pink)
                    .frame(width: 150, height: 100)
                Rectangle()
                    .foregroundColor(.pink)
                    .frame(width: 150, height: 75)
            }

            Text("Buttons pull in. Use frames to push them out:")
            Button(action: {}) {
                Text("Button")
            }   
            .frame(width: 200, height: 100)
            .border(Color.pink)
        }
    }
}

struct FrameControlsAndShapes_Previews: PreviewProvider {
    static var previews: some View {
        FrameControlsAndShapes()
    }
}
