//
//  ImageSymbolWeight.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/15.
//

import SwiftUI

struct ImageSymbolWeight: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Image - Symbols")
                .font(.largeTitle)
            Text("Symbol Weight")
                .font(.title)
                .foregroundColor(.gray)

            Text("Just as fonts have weight, symbol have weight too. You change the weight the same way you set the font's weight.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.red)
                .foregroundColor(.white)

            HStack(spacing: 40) {
                Image(systemName: "moon.stars")
                    .font(Font.largeTitle.weight(.ultraLight))
                Image(systemName: "moon.stars")
                    .font(Font.largeTitle.weight(.regular))
                Image(systemName: "moon.stars")
                    .font(Font.largeTitle.weight(.semibold))
                Image(systemName: "moon.stars")
                    .font(Font.largeTitle.weight(.bold))
                Image(systemName: "moon.stars")
                    .font(Font.largeTitle.weight(.black))
            }

            Text("Use a custom font point size with a font weight.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.red)
                .foregroundColor(.white)

            HStack(spacing: 40) {
                Image(systemName: "moon.zzz")
                    .font(Font.system(size: 60, weight: .ultraLight))
                Image(systemName: "moon.zzz")
                    .font(Font.system(size: 60, weight: .light))
                Image(systemName: "moon.zzz")
                    .font(Font.system(size: 60, weight: .regular))
                Image(systemName: "moon.zzz")
                    .font(Font.system(size: 60, weight: .bold))
            }
        }
    }
}

struct ImageSymbolWeight_Previews: PreviewProvider {
    static var previews: some View {
        ImageSymbolWeight()
            .preferredColorScheme(.dark)
    }
}
