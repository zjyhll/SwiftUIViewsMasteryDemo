//
//  AngularGradientOnOtherControls.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/16.
//

import SwiftUI

struct AngularGradientOnOtherControls: View {
    var body: some View {
        let gradient = Gradient(colors: [.pink, .purple, .pink])
        let angularGradient = AngularGradient(gradient: gradient, center: .center, angle: .degrees(0))

        return VStack(spacing: 20) {
            Text("Angular Gradient")
                .font(.largeTitle)
            Text("On Other Views")
                .font(.title)
                .foregroundColor(.gray)
            Text("Apply angular gradients to control views.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundColor(Color.white)
                .layoutPriority(1)

            Button(action: {}) {
                Text("Gradient on Background")
                    .foregroundColor(Color.white)
                    .padding()
            }
            .padding(.horizontal)
            .background(Capsule().fill(angularGradient))

            Button(action: {}) {
                Text("Gradient on Border")
                    .padding()
                    .background(
                        Capsule()
                            .stroke(angularGradient, lineWidth: 3)
                    )
            }
        }
        .font(.title)
    }
}

struct AngularGradientOnOtherControls_Previews: PreviewProvider {
    static var previews: some View {
        AngularGradientOnOtherControls()
            .preferredColorScheme(.dark)
    }
}
