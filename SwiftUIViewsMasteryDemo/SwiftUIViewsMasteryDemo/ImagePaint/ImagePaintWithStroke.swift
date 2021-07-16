//
//  ImagePaintWithStroke.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/16.
//

import SwiftUI

struct ImagePaintWithStroke: View {

    var body: some View {
        let imgPaint = ImagePaint(image: Image(decorative: "repeatableImage"))
        let imgPaintInverse = ImagePaint(image: Image(decorative: "repeatableImageInverse"), scale: 0.5)
        return ZStack {
            Rectangle()
                .fill(imgPaint)
                .edgesIgnoringSafeArea(.vertical)

            VStack(spacing: 20) {
                Text("ImagePaint")
                    .font(.system(.largeTitle, design: .serif))
                Text("With Stroke")
                    .foregroundColor(.gray)
                    .font(.system(.title, design: .serif))
                Text("Since ImagePaint is a ShapeStyle, we can also apply it to the border of shapes.")
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.black)
                    .foregroundColor(Color("ImagePaintBackgroundColor"))

                Circle()
                    .strokeBorder(imgPaintInverse, lineWidth: 50, antialiased: true)
                    .shadow(color: Color.black, radius: 20, x: 10, y: 10)
                    .padding()

                Text("Note: The image paint is created from an image at 50% scale, Also, remember that the strokeBorder modifier starts from the border of the shape and goes inward.")
                    .font(.system(.body, design: .serif))
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(Color("ImagePaintBackgroundColor"))
                    .background(Color.black)
            }
        }
    }
}

struct ImagePaintWithStroke_Previews: PreviewProvider {
    static var previews: some View {
        ImagePaintWithStroke()
    }
}
