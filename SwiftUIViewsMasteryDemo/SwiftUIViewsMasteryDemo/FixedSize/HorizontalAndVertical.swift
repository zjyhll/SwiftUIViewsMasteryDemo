//
//  HorizontalAndVertical.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/17.
//

import SwiftUI

struct HorizontalAndVertical: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Fixed Size")
                .font(.largeTitle)
            Text("Horizontal & Vertical")
                .font(.title)
                .foregroundColor(.gray)
            Text("You can control whether you want the view fixed to its ideal size horizontally or vertically.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.yellow)
            Text("By default, when you use .fixedSize(), horizontal and vertical parameter are both true. Here is an example where horizontal is TRUE and vertical is FALSE:")
                .padding()
                .layoutPriority(1)
            ZStack(alignment: .leading) {
                HStack {
                    Spacer()
                    Image("SwiftUI")
                        .resizable()
                        .frame(width: 180, height: 180)
                }
                Text("Welcome to SwiftUI")
                    .italic()
                    .bold()
                    .font(Font.system(size: 40))
                    .shadow(color: .white, radius: 1, x: 1, y: 1)
                    .padding()
                    .fixedSize(horizontal: true, vertical: false)
                    .frame(width: 200, height: 200, alignment: .leading)
                    .border(Color.yellow)
            }
            Text("Here, horizontal is FALSE and vetical is TRUE:")
            ZStack(alignment: .leading) {
                HStack {
                    Spacer()
                    Image("SwiftUI")
                        .resizable()
                        .frame(width: 200, height: 200)

                }
                Text("Welcome to SwiftUI!")
                    .italic()
                    .bold()
                    .font(Font.system(size: 40))
                    .shadow(color: .white, radius: 1, x: 1, y: 1)
                    .padding()
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width: 200, height: 200)
                    .border(Color.yellow)
            }
        }
    }
}

struct HorizontalAndVertical_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalAndVertical()
    }
}
