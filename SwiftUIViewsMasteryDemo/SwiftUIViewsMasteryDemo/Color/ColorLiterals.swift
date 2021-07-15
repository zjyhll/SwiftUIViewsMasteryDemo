//
//  ColorLiterals.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/15.
//

import SwiftUI

struct ColorLiterals: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Color")
                .font(.largeTitle)
            Text("Using Color Literals")
                .foregroundColor(.gray)
            Text("Color literals are an easy way to define custom colors right in your code and get a little preview of it. Here is how you create one:")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.orange)

            VStack(alignment: .leading, spacing: 8) {
                Text("1. type 'Color()' in your code.")
                Text("2. Inside the parentheses of 'Color()', start typing in 'Color Literal' until you see the autocomplete suggestions.")
                Image("ColorLiteral")
                    .resizable()
                    .shadow(radius: 8)
                Text("3. Hit ENTER to select it.")
                Text("4. Double-click on the color preview to select a preset color or click 'Customize...' to use the color tools.")
                Image("ColorLiterialSelected")
                    .shadow(radius: 8)
            }
            .layoutPriority(1)
            .font(.body)
            .padding(.horizontal)
        }
        .font(.title)
    }
}

struct ColorLiterals_Previews: PreviewProvider {
    static var previews: some View {
        ColorLiterals()
    }
}
