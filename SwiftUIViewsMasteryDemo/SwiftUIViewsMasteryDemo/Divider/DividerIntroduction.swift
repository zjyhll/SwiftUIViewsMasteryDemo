//
//  DividerIntroduction.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/15.
//

import SwiftUI

// Dividers are views that operate like drawn lines. You cannot make them thicker
// but you can adjust how long they are and their color.

struct DividerIntroduction: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Divider")
                .font(.largeTitle)
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)

            Text("Dividers are easy to implement")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.green)
                .foregroundColor(.white)

            Text("Horizontal Divider")

            Divider()
            Image(systemName: "arrow.left.and.right")
                .font(.system(size: 60))
            Divider()

            Text("It is horizontal bacause it is in a VStack. It will be vertical if in an HStack")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.green)
                .foregroundColor(Color.white)

            HStack {
                Text("Vertical Divider")
                Divider()
                Image(systemName: "arrow.up.and.down")
                    .font(.system(size: 60))
                Divider()
            }
        }
    }
}

struct DividerIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        DividerIntroduction()
    }
}
