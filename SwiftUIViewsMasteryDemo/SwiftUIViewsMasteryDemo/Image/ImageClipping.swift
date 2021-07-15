//
//  ImageClipping.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/15.
//

import SwiftUI

struct ImageClipping: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Image")
                .font(.largeTitle)

            Text("Clipping (Masking)")
                .font(.title)
                .foregroundColor(.gray)

            Text("Use the clipShape modifier and provide shape to mask your image.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.red)
                .foregroundColor(.white)

            Text("Circle")
            Image("Valley")
                .resizable()
                .frame(width: 120, height: 120)
                .clipShape(Circle())

            Text("Rounded Rectangle")
            Image("Valley")
                .resizable()
                .frame(width: 200, height: 120)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 10, x: 1, y: 1)

            Text("Circle with Offset")
            Image("Valley")
                .resizable()
                .frame(width: 200, height: 120)
                .clipShape(Capsule().offset(x: -80, y: 0))
        }
    }
}

struct ImageClipping_Previews: PreviewProvider {
    static var previews: some View {
        ImageClipping()
            .preferredColorScheme(.dark)
    }
}
