//
//  OverlayWithImageAndAlignment.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/19.
//

import SwiftUI

struct OverlayWithImageAndAlignment: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Overlay")
                .font(.largeTitle)
            Text("Over Images with Alignment")
                .font(.title)
                .foregroundColor(.gray)

            Image("Overlay")
                .resizable()
                .frame(width: 80, height: 80)

            Text("Overlays are great when shwoing text over images.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .foregroundColor(.white)
                .background(Color.blue)

            Image("canyonlands")
                .resizable()
                .overlay(
                    Rectangle()
                        .frame(height: 80)
                        .opacity(0.5)
                    , alignment: .bottom
                )
                .overlay(
                    Text("Canyonlands")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(.bottom)
                    , alignment: .bottom
                )
        }
    }
}

struct OverlayWithImageAndAlignment_Previews: PreviewProvider {
    static var previews: some View {
        OverlayWithImageAndAlignment()
    }
}
