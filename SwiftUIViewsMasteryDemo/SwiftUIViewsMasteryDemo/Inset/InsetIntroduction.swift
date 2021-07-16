//
//  InsetIntroduction.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/16.
//

import SwiftUI

// An "inset" is a thing that is put in or inserted or the action of putting in
// or inserting. In this case, the thing that is inset is space or distance.

// Inset applies to shapes only. That's why I am mentionning it here.

// It allows you to define how much distance to put between the frame and the
// actual shape itself. It can be positive or negetive as you will soon see.
struct InsetIntroduction: View {
    @State private var insetAmount: CGFloat = 45

    var body: some View {
        VStack(spacing: 20) {
            Text("Inset")
                .font(.largeTitle)

            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            Text("Inset applies only to shapes. It allows you to add padding between the edge of the frame and the shape itself.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)

            Text("Inset by 20")
            Circle()
                .inset(by: 20)
                .fill(Color.purple)
                .frame(width: 200)
                .border(Color.purple)

            Text("Slide to Adjust Inset")
            Rectangle()
                .inset(by: insetAmount)
                .fill(Color.purple)
                .frame(width: 300, height: 200)
                .border(Color.purple)

            HStack {
                Text("0")
                Slider(value: $insetAmount, in: 0...95)
                Text("95")
            }
            .padding()
        }
        .font(.title)
    }
}

struct InsetIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        InsetIntroduction()
    }
}
