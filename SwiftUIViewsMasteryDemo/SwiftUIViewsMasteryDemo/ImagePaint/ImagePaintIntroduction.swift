//
//  ImagePaintIntroduction.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/16.
//

import SwiftUI

struct ImagePaintIntroduction: View {
    var body: some View {
        let imgPaint = ImagePaint(image: Image(decorative: "repeatableImage"))

        return ZStack {
            Rectangle()
                .fill(imgPaint)
                .edgesIgnoringSafeArea(.vertical)

            VStack(spacing: 20) {
                Text("ImagePaint")
                    .font(.system(.largeTitle, design: .serif))
                Text("Introduction")
                    .foregroundColor(.gray)
                    .font(.system(.title, design: .serif))
                Text("The background image used here is a made of repeated tiles. ImagePaint is NOT a view. You use it to fill shapes.")
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.black)
                    .foregroundColor(Color("ImagePaintBackgroundColor"))

                Spacer()
            }
        }
    }
}

struct ImagePaintIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ImagePaintIntroduction()
            ImagePaintIntroduction()
                .preferredColorScheme(.dark)
        }
    }
}
