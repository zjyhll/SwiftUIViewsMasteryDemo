//
//  ImageResizing.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/15.
//

import SwiftUI

struct ImageResizing: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Image")
                .font(.largeTitle)
            Text("Resizing")
                .font(.title)
                .foregroundColor(.gray)

            Text("With the resizable modifier, you can then adjust the frame to resize")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.red)
                .foregroundColor(.white)

            Image("SwiftUI")
                .resizable()
                .frame(width: 100.0, height: 100.0)

            Text("No Scaling")

            Image("SwiftUI")
                .resizable()
                .frame(width: 100, height: 150)
                .background(Color.primary)

            Text("With Scaling")

            Image("SwiftUI")
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 200)
                .background(Color.primary)
        }
    }
}

struct ImageResizing_Previews: PreviewProvider {
    static var previews: some View {
        ImageResizing()
            .preferredColorScheme(.dark)
    }
}
