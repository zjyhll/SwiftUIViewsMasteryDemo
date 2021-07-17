//
//  FrameAlignment.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/17.
//

import SwiftUI

struct FrameAlignment: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Frame")
                .font(.largeTitle)
            Text("Alignment")
                .font(.title)
                .foregroundColor(.gray)
            Text("The frame modifier allows you to align the content widthin a frame (if there is avaliable space). The alignment won't work on views push out to fill all available space, like shapes.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.red)
                .foregroundColor(.white)
            HStack {
                Button(action: {}) {
                    Text("Button")
                }
                .frame(width: 150, height: 150, alignment: .top)
                .border(Color.pink)

                Button(action: {}) {
                    Text("Button")
                }
                .frame(width: 150, height: 150, alignment: .leading)
                .border(Color.pink)
            }
            HStack {
                Button(action: {}) {
                    Text("Button")
                }
                .frame(width: 150, height: 150, alignment: .leading)
                .border(Color.pink)
                Button(action: {}) {
                    Text("Button")
                }
                .frame(width: 150, height: 150, alignment: .bottom)
                .border(Color.pink)
            }
        }
    }
}

struct FrameAlignment_Previews: PreviewProvider {
    static var previews: some View {
        FrameAlignment()
    }
}
