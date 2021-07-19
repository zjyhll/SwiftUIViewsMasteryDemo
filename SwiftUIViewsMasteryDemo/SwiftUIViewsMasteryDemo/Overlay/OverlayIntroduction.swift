//
//  OverlayIntroduction.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/19.
//

import SwiftUI

// The word "overlay" means to lay or place something over something else.
// And that is what the Overlay modifier does, it modifiers an existing
// view by putting another view on top of it.

// This is the opposite of the Background modifier. In most cases, you
// can achieve the same result by using the ZStack layout view. The choice
// is yours.

struct OverlayIntroduction: View {
    var body: some View {
        VStack(spacing: 20) {
            Color("Theme3BackgroundColor")
                .overlay(
                    VStack(spacing: 20) {
                        Text("Overlay")
                            .font(.largeTitle)
                        Text("Example")
                            .font(.title)
                            .foregroundColor(.gray)
                        Image("Overlay")

                        Text("In this example, we see a VStack on top of a Color view. This is another way in which you can priovide a background color an a screen.")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .font(.title)
                            .background(Color.blue)
                            .foregroundColor(.white)
                    }
                    , alignment: .center
                )
                .edgesIgnoringSafeArea(.vertical)
        }
    }
}

// In this example, you start with a color and you are overlaying another view
// on top of it. Notice towards the bottom, the overlay modifier has an
// alignment parameter that we set to center.

// Since center is the default value, you don't have to include this parameter.
// But I wanted to bring it to your attention as an option.

struct OverlayIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        OverlayIntroduction()
    }
}
