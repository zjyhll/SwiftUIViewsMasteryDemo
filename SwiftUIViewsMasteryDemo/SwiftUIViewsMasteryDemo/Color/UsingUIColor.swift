//
//  UsingUIColor.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/15.
//

import SwiftUI

struct UsingUIColor: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Color")
                .font(.largeTitle)
            Text("Using UIColor")
                .font(.title)
                .foregroundColor(.gray)
            Text("It should be mentioned that the Color view can also access colors from UIColor.")
                .frame(maxWidth: .infinity)
                .font(.title)
                .padding()
                .background(Color.orange)
                .layoutPriority(1)

            VStack {
                HStack {
                    Spacer()
                    Text("SwiftUI")
                        .font(.title)
                    Spacer()
                    Text("UIColor")
                        .font(.title)
                    Spacer()
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.gray)
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(UIColor.gray))
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.red)
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(UIColor.red))
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.green)
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(UIColor.green))
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.blue)
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(UIColor.blue))
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.orange)
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(UIColor.orange))
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.yellow)
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(UIColor.yellow))
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.pink)
                    RoundedRectangle(cornerRadius: 10)
                        .background(Color.black)
                        .overlay(
                            Text("None")
                                .foregroundColor(.white)
                        )
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.purple)
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(UIColor.purple))
                }
            }
        }
    }
}

struct UsingUIColor_Previews: PreviewProvider {
    static var previews: some View {
        UsingUIColor()
    }
}
