//
//  FixedSizeIntroduction.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/17.
//

import SwiftUI

// Most SwiftUI views have "content". Content is the part of the view that is actually drawn
// on the screen and is visible. When content is drawn, it stays within the bounds of its
// parent view, within the frame.

// You can use the fixed size modifier to allow the content to extend beyond the frame,
// whether horizontally, vertically or both, so the content is at its ideal size.

struct FixedSizeIntroduction: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Fixed Size")
                .font(.largeTitle)
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            Text("The fixed size modifier allows content to extend past the bounds of its parent container.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.yellow)
                .layoutPriority(1)
            
            Text("The text below stays within the bounds of the frame that is set.")
                .font(.body)
            ZStack(alignment: .leading) {
                HStack {
                    Spacer()
                    Image("SwiftUI")
                        .resizable()
                        .frame(width: 200, height: 200)
                }
                Text("Welcome to SwiftUI")
                    .italic()
                    .bold()
                    .font(Font.system(size: 40))
                    .shadow(color: .white, radius: 1, x: 1, y: 1)
                    .frame(width: 200, height: 200, alignment: .leading)
                    .border(Color.yellow)
            }
            Text("If you add the fixedSize modifier, it will allow the text to go untruncated and extend to its ideal size.")
            ZStack(alignment: .leading) {
                HStack {
                    Spacer()
                    Image("SwiftUI")
                        .resizable()
                        .frame(width: 200, height: 200)
                }
                Text("Welcome to SwiftUI")
                    .italic()
                    .bold()
                    .font(Font.system(size: 40))
                    .shadow(color: .white, radius: 1, x: 1, y: 1)
                    .padding()
                    .fixedSize() // fix the view to its ideal size
                    .frame(width: 200, height: 200, alignment: .leading)
                    .border(Color.yellow)
            }
        }
    }
}

struct FixedSizeIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        FixedSizeIntroduction()
    }
}
