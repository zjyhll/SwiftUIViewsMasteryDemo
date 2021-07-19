//
//  OffsetIntroduction.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/19.
//

import SwiftUI

// The offset modifier gives you another tool to help with positioning views
// on your screen. With offset, you can move the contents of a view up, down
// or side to side

// The important thing to know here is that the actual frame of the view
// remains in place and it is the visible part of the view (the contents) that
// is moved.

struct OffsetIntroduction: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Offset")
                .font(.largeTitle)
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            Text("Use the offset modifier to move a view from its original position using the X and Y coordinate values.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.green)
                .foregroundColor(.white)

            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.green)
                    .frame(width: 200, height: 100)
                    .shadow(radius: 5)
                    .offset(x: -20, y: -20)

                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.green)
                    .frame(width: 200, height: 100)
                    .shadow(radius: 5)

                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.green)
                    .frame(width: 200, height: 100)
                    .shadow(radius: 5)
                    .offset(x: 20, y: 20)
            }
            .padding()

            Text("Note, only the contents of the view are offset, not the view itself. The location of the original view remains the same. The red border shows the actual location of the rectangle's frame.")
                .padding()
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.green)
                .frame(width: 200, height: 100)
                .shadow(radius: 5)
                .offset(x: 40, y: 40)
                .border(Color.red)
        }
    }
}

struct OffsetIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        OffsetIntroduction()
    }
}
