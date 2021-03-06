//
//  EdgesIgnoringSafeAreaIntroduction.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/17.
//

import SwiftUI

struct EdgesIgnoringSafeAreaIntroduction: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 20) {
                Text("Edges Ignoring Safe Area")
                    .font(.largeTitle)
                    .padding(.bottom, 10)
                    .padding(.top, geometry.safeAreaInsets.top)
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
                    .foregroundColor(.white)

                Text("Introduction")
                    .font(.title)
                    .foregroundColor(.gray)
                Text("Extend the header color past the safe area at the top.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .font(.title)
                    .background(Color.orange)
                    .foregroundColor(.white)

                Spacer()
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

// In this scenario, I am only igonring the top Safe Area edge. This looks
// fine in portrait mode. But how will it looks in landscape mode?

struct EdgesIgnoringSafeAreaIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EdgesIgnoringSafeAreaIntroduction()
            EdgesIgnoringSafeAreaIntroduction()
                .previewLayout(PreviewLayout.fixed(width: 896, height: 414))
        }
    }
}

// You can immediately see that it could look better.
// 1. You can ignore all the edges of the safe areas.
// 2. When in landscape mode, you no longer need the extra padding at the top of the header.
//
// Let's see what you can do to handle these two issues.
