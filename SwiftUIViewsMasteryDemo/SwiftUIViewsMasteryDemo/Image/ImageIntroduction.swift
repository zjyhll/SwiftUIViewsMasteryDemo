//
//  ImageIntroduction.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/15.
//

import SwiftUI

// The image view can be used to show your own image in the asset catalog whether
// bitmap or PDF vector. It can also be used to show SF(San Francisco) Symbols
// by using the systemName initializer.

// The image is a pull-in view unless you apply the resizable modifier to it.
// Then it is a push-out view.

struct ImageIntroduction: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Image")
                .font(.largeTitle)
            Text("From Asset Catalog")
                .font(.title)
                .foregroundColor(.gray)

            Text("By default, your images retain their original size.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.red)
                .foregroundColor(.white)
            Image("SwiftUI.red.small")
                .resizable()
                .frame(width: 100, height: 100)

            Text("You can change the size by adding the resizable modifier.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.red)
                .foregroundColor(.white)

            Image("SwiftUI.red.small")
                .resizable()

            Text("By default, resizable will allow the image to expand to fill all available space.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.red)
                .foregroundColor(.white)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ImageIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        ImageIntroduction()
    }
}
