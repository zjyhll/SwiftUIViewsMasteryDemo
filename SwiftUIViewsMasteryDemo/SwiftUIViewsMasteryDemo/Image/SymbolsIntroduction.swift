//
//  SymbolsIntroduction.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/15.
//

import SwiftUI

struct SymbolsIntroduction: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Image")
                .font(.largeTitle)
            Text("From Symbols")
                .font(.title)
                .foregroundColor(.gray)

            Text("You can also use the Image view to load 'symbols' using the 'systemName' parameter in the Image initializer.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.red)
                .foregroundColor(.white)

            Text("Here are some examples of symbols:")

            HStack(spacing: 40) {
                Image(systemName: "cloud.sun.fill")
                Image(systemName: "cloud.sun.rain.fill")
                Image(systemName: "cloud.sun.bolt.fill")
            }

            Text("Tip: Use the app, SF Symbols, to browse over 1500 symbols available.")

            Text("Set color with the foregroundColor modifier.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.red)
                .foregroundColor(.white)

            HStack(spacing: 40) {
                Image(systemName: "cloud.sun.fill")
                    .foregroundColor(Color.red)
                Image(systemName: "cloud.sun.rain.fill")
                    .foregroundColor(Color.orange)
                Image(systemName: "cloud.sun.bolt.fill")
                    .foregroundColor(Color.yellow)
            }
        }
        .font(.title)
    }
}

struct SymbolsIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        SymbolsIntroduction()
            .preferredColorScheme(.dark)
    }
}
