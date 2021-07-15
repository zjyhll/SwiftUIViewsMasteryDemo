//
//  DividerCustomization.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by 刘勇刚 on 2021/7/15.
//

import SwiftUI

struct DividerCustomization: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Divider")
                .font(.largeTitle)
            Text("Customization")
                .font(.title)
                .foregroundColor(.gray)
            Text("You can change the colors of Dividers using the background modifier")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.green)
                .foregroundColor(.white)

            Text("Red")
            Divider().background(Color.red)
            Text("Blue")
            Divider().background(Color.blue)

            Text("You can also change the size (but not the thickness) of a Divider")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.green)
                .foregroundColor(Color.white)
                .font(.title)

            HStack {
                Divider()
                    .frame(height: 40)
                Text("When vertical, you change the height")
                Divider()
                    .frame(height: 40)
            }

            Group {
                Divider()
                    .frame(width: 300)
                Text("When horizontal, you change the width")
                Divider()
                    .frame(width: 300)
            }
        }
    }
}

struct DividerCustomization_Previews: PreviewProvider {
    static var previews: some View {
        DividerCustomization()
    }
}
