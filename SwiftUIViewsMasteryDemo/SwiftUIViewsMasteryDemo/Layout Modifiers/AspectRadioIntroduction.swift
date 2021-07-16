//
//  AspectRadioIntroduction.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/17.
//

import SwiftUI

// Aspect Ratio is a way to compare the width to the height of something. Aspect ratio is
// usually expresssed in the format of width:height. The height and width can be any unit
// of measurement. For example, if you have a photo with aspect ratio of 1:2 then can
// represent a height of 1 foot and a width of 2 feet. Another photo can also have a 1:2
// aspect ratio and only be 1 inch wide and 2 inches high.
// In SwiftUI, you can add an aspect ratio to views so if the height changes, the width
// will also change to maintain the same aspect ratio. Or if the width changes, the height
// will change to maintain the same aspect ratio. This is useful to accommodate different
// device sizes.

struct AspectRadioIntroduction: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Aspect Ratio")
                .font(.largeTitle)
            Text("Introduction")
                .foregroundColor(.gray)
            Text("The aspectRatio modifier only takes one value. You can think of it as setting the width in comparison to the view's height.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.orange)
                .foregroundColor(.white)

            Text("Original Image (1:1)")
            Image("AspectRatio")
                .resizable()
                .frame(width: 60, height: 60)

            Text("Width half of Height (1:2)")
            Image("AspectRatio")
                .resizable()
                .frame(height: 60)
                .aspectRatio(0.5, contentMode: .fit)

            Text("Width 2X of Height (2:1)")
            Image("AspectRatio")
                .resizable()
                .frame(height: 60)
                .aspectRatio(2, contentMode: .fit)
        }
        .font(.title)
    }
}

struct AspectRadioIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        AspectRadioIntroduction()
    }
}
