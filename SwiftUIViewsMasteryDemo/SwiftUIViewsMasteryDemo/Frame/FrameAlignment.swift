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
                .foregroundColor(.gray)
            Text("The frame modifier allows you to align the content widthin a frame (if there is avaliable space). The alignment won't work on views push out to fill all available space, like shapes.")
        }
    }
}

struct FrameAlignment_Previews: PreviewProvider {
    static var previews: some View {
        FrameAlignment()
    }
}
