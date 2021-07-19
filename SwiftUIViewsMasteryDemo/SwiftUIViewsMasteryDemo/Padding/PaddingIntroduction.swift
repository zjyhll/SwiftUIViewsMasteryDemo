//
//  PaddingIntroduction.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/19.
//

import SwiftUI

struct PaddingIntroduction: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Padding")
                .font(.largeTitle)
            Text("Introduction")
                .foregroundColor(.gray)
                .font(.title)

            Text("Padding adds extra space around a view.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color("PaddingBackgroundColor"))
                .foregroundColor(Color("PaddingForegroundColor"))

            HStack {
                Spacer()
                Text("Before")
                    .font(.headline)
                Spacer()
                Text("After")
                    .font(.headline)
                    .padding() // Add extra spacing around the text
                Spacer()
            }

            HStack {
                Spacer()
                Image("profile")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .border(Color("Theme4ForegroundColor"))
                Spacer()
                Image("profile")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding() // Add extra spacing around the image
                    .border(Color("Theme4ForegroundColor"))
                Spacer()
            }

            HStack {
                Spacer()
                Text("profile")
                    .border(Color("Theme4ForegroundColor"))
                Spacer()
                Text("profile")
                    .padding() // Add extra spacing around the text
                    .border(Color("Theme4ForegroundColor"))
                Spacer()
            }

            HStack {
                Spacer()
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 100, height: 100)
                    .border(Color("Theme4ForegroundColor"))
                Spacer()
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 100, height: 100)
                    .padding() // Extra spacing around the shape
                    .border(Color("Theme4ForegroundColor"))
                Spacer()
            }

            Text("By default, padding adds 16 points of space around a view.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color("PaddingBackgroundColor"))
                .foregroundColor(Color("PaddingForegroundColor"))
        }
    }
}

struct PaddingIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        PaddingIntroduction()
    }
}
