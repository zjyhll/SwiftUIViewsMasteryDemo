//
//  HiddenIntroduction.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/17.
//

import SwiftUI

// You may have situations where you want to show or hide a view depending on a condition.
// There are a few ways to do this. If you do not want your screen adjusting or moving when
// hiding a view then the hidden modifier is perfect.

// When using hidden, the view will still occupy the space it normally does even though it
// cannot be seen.

struct HiddenIntroduction: View {
    @State private var showShapes = false
    var body: some View {
        VStack(spacing: 20) {
            Text("Hidden")
                .font(.largeTitle)
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            Text("When hidden is used on a view, you no longer see the content but the frame of the view is still there occupying space.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.yellow)
                .foregroundColor(.white)
            if showShapes {
                OrangeRectangle()
                    .overlay(
                        Text("Showing hidden shape")
                            .foregroundColor(.black)
                    )
            } else {
                OrangeRectangle()
                    .hidden()
                    .overlay(
                        Text("This shape is hidden but it is still occupying space")
                            .foregroundColor(.orange)
                    )
            }
            OrangeRectangle()
            OrangeRectangle()

            Button(action: {
                showShapes.toggle()
            }, label: {
                Text("Show/Hide View")
            })
        }
    }
}

struct OrangeRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(.orange)
    }
}

struct HiddenIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        HiddenIntroduction()
    }
}
