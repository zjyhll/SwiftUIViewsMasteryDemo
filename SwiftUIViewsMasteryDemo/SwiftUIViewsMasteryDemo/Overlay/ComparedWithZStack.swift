//
//  ComparedWithZStack.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecehrJ on 2021/7/19.
//

import SwiftUI

struct ComparedWithZStack: View {
    var body: some View {
        ZStack(alignment: .center) {
            Color("Theme3BackgroundColor")

            VStack(spacing: 20) {
                Text("Overlay")
                    .font(.largeTitle)
                Text("Compared with ZStack")
                    .font(.title)
                    .foregroundColor(.gray)

                HStack {
                    Image("Overlay")
                        .resizable()
                        .frame(width: 80, height: 80)
                    Image("ZStack")
                        .resizable()
                        .frame(width: 80, height: 80)
                }

                Text("For comparison, here is the same layout but using a ZStack. The choice is yours which method you want to use.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .font(.title)
                    .background(Color.blue)
                    .foregroundColor(.white)
            }
        }
        .edgesIgnoringSafeArea(.vertical)
    }
}

struct ComparedWithZStack_Previews: PreviewProvider {
    static var previews: some View {
        ComparedWithZStack()
            .preferredColorScheme(.dark)
    }
}
