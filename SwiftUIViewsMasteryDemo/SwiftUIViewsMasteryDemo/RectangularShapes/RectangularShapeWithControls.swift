//
//  RectangularShapeWithControls.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/16.
//

import SwiftUI

struct RectangularShapeWithControls: View {
    @State private var textField = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("Rectangular Shapes")
                .font(.largeTitle)
            Text("Using with controls")
                .font(.title)
                .foregroundColor(.gray)
            Text("You can apply rectangular shapes to other views using the .background modifier")
                .frame(maxWidth: .infinity)
                .font(.title)
                .padding()
                .layoutPriority(1)
                .background(Color.blue)
                .foregroundColor(Color.white)

            Button(action: {}) {
                Text("RoundedRectangle and Button")
                    .bold()
                    .padding()
            }
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue, lineWidth: 1)
            )
            .accentColor(.blue)

            Button(action: {}) {
                Text("RoundedRectangle and Button")
                    .foregroundColor(.white)
                    .bold()
                    .padding()
            }
            .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.blue))
            .accentColor(.green)

            TextField("Placeholder Text", text: $textField)
                .foregroundColor(.white)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.blue))
                .padding()
        }
    }
}

struct RectangularShapeWithControls_Previews: PreviewProvider {
    static var previews: some View {
        RectangularShapeWithControls()
            .preferredColorScheme(.dark)
    }
}
