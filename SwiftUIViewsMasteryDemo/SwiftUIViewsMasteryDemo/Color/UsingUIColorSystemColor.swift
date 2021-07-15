//
//  UsingUIColorSystemColor.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by 刘勇刚 on 2021/7/15.
//

import SwiftUI

struct UsingUIColorSystemColor: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Color")
                .font(.largeTitle)
            Text("Using UIColor.system")
                .font(.title)
                .foregroundColor(.gray)
            Text("Using UIColor.system will give you an even wider range of colors that will change for light and dark modes.")
                .frame(maxWidth: .infinity)
                .font(.title)
                .padding()
                .background(Color.orange)
                .layoutPriority(1)

            VStack {
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(UIColor.systemGray))
                        .overlay(Text("systemGray"))
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(UIColor.systemGray2))
                        .overlay(Text("systemGray2"))
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(UIColor.systemGray3))
                        .overlay(Text("systemGray3"))
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(UIColor.systemGray4))
                        .overlay(Text("systemGray4"))
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(UIColor.systemGray5))
                        .overlay(Text("systemGray5"))
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(UIColor.systemGray6))
                        .overlay(Text("systemGray6"))
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(UIColor.systemTeal))
                        .overlay(Text("systemTeal"))
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(UIColor.systemIndigo))
                        .overlay(Text("systemIndigo"))
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(UIColor.systemBlue))
                        .overlay(Text("systemBlue"))
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(UIColor.systemRed))
                        .overlay(Text("systemRed"))
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(UIColor.systemPurple))
                        .overlay(Text("systemPurple"))
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(UIColor.systemPink))
                        .overlay(Text("systemPink"))
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(UIColor.systemYellow))
                        .overlay(Text("systemYellow"))
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(UIColor.systemOrange))
                        .overlay(Text("systemOrange"))
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(UIColor.systemGreen))
                        .overlay(Text("systemGreen"))
                }
            }

            Text("Many colors here are the same as SwiftUI colors. But the system colors give you multiple grays, Teal and Indigo.")
                .frame(maxWidth: .infinity)
                .font(.title)
                .padding()
                .background(Color.orange)
                .layoutPriority(1)
        }
    }
}

struct UsingUIColorSystemColor_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            UsingUIColorSystemColor()
                .preferredColorScheme(.dark)
            UsingUIColorSystemColor()
        }
    }
}

// Notice how the system gray colors change from light and dark mode.
// Keep this in mind if you are using them in your design to make sure
// your UI looks good in both dark and light modes.
