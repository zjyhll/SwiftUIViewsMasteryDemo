//
//  ColorInvert.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by 刘勇刚 on 2021/7/15.
//

import SwiftUI

struct ColorInvert: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Color")
                .font(.largeTitle)
            Text("Inverting")
                .font(.title)
                .foregroundColor(.gray)
            Text("Using the colorInvert modifier you can increase your from the system color pallet.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.orange)
                .layoutPriority(1)

            VStack {
                HStack {
                    Spacer()
                    Text("System")
                        .font(.title)
                    Spacer()
                    Text("Inverted")
                        .font(.title)
                    Spacer()
                }

                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.gray)
                        .overlay(
                            Text("Gray")
                                .foregroundColor(.black)
                        )
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.gray)
                        .colorInvert()
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.red)
                        .overlay(
                            Text("Red")
                                .foregroundColor(.black)
                        )
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.red)
                        .colorInvert()
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.green)
                        .overlay(
                            Text("Green")
                                .foregroundColor(.black)
                        )
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.green)
                        .colorInvert()
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.blue)
                        .overlay(
                            Text("Blue")
                                .foregroundColor(.black)
                        )
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.blue)
                        .colorInvert()
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.orange)
                        .overlay(
                            Text("Orange")
                                .foregroundColor(.black)
                        )
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.orange)
                        .colorInvert()
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.yellow)
                        .overlay(
                            Text("Yellow")
                                .foregroundColor(.black)
                        )
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.yellow)
                        .colorInvert()
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.pink)
                        .overlay(
                            Text("Pink")
                                .foregroundColor(.black)
                        )
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.pink)
                        .colorInvert()
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.purple)
                        .overlay(
                            Text("Purple")
                                .foregroundColor(.black)
                        )
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.purple)
                        .colorInvert()
                }
            }
        }
    }
}

// Note: You can use colorInvert modifier directly on o Color. But just know
// that this will change the type from a Color to a View.

struct ColorInvert_Previews: PreviewProvider {
    static var previews: some View {
        ColorInvert()
    }
}
