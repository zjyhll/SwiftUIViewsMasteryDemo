//
//  AspectRatioResizingForDevices.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/17.
//

import SwiftUI

struct AspectRatioResizingForDevices: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Aspect Ratio")
                .font(.largeTitle)
            Text("Resizing for Devices")
                .foregroundColor(.gray)
            Text("You might have a situation where you want the size of some view to always be half the width of the device but still maintain the same aspect ratio.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.orange)
                .foregroundColor(.white)

            GeometryReader { geometry in
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: geometry.size.width / 2)
                    .aspectRatio(1.5, contentMode: .fit)
                    .foregroundColor(.purple)
                    .overlay(
                        Text("2:3 Aspect Ratio")
                            .foregroundColor(.white)
                    )
            }
        }
        .font(.title)
    }
}

// By embedding the RoundedRectangle in the GeometryReader, you can get the
// width of the device and set the RoundedRectangle's width to half of it.
// Once you have the correct width, you apply the aspect ratio. Since the
// width is already set, the aspect ratio will affect the height instead.

struct AspectRatioResizingForDevices_Previews: PreviewProvider {
    static var previews: some View {
        AspectRatioResizingForDevices()
    }
}
