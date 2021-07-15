//
//  ImageSymbolSizing.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/15.
//

import SwiftUI

struct ImageSymbolSizing: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Image - Symbols")
                .font(.largeTitle)
            Text("Size Modifiers")
                .font(.title)
                .foregroundColor(.gray)

            Text("You can scale images using imageScale modifier.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.red)
                .foregroundColor(.white)

            HStack(spacing: 40) {
                Image(systemName: "thermometer.sun")
                    .imageScale(.large)
                Image(systemName: "thermometer.sun")
                    .imageScale(.medium)
                Image(systemName: "thermometer.sun")
                    .imageScale(.small)
            }

            Text("You can also change size with font size styles")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.red)
                .foregroundColor(.white)
            HStack(spacing: 40) {
                Image(systemName: "thermometer.sun")
                    .font(.largeTitle)
                Image(systemName: "thermometer.sun")
                    .font(.title)
                Image(systemName: "thermometer.sun")
                    .font(.body)
                Image(systemName: "thermometer.sun")
                    .font(.caption)
            }

            Text("Font point size will also work")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.red)
                .foregroundColor(.white)
            HStack(spacing: 40) {
                Image(systemName: "thermometer.sun")
                    .font(.system(size: 60))
                Image(systemName: "thermometer.sun")
                    .font(.system(size: 50))
                Image(systemName: "thermometer.sun")
                    .font(.system(size: 40))
                Image(systemName: "thermometer.sun")
                    .font(.system(size: 30))
            }
        }
    }
}

struct ImageSymbolSizing_Previews: PreviewProvider {
    static var previews: some View {
        ImageSymbolSizing()
            .preferredColorScheme(.dark)
    }
}
