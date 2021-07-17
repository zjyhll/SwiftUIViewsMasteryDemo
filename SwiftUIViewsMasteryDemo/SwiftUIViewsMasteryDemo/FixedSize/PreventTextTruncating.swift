//
//  PreventTextTruncating.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/17.
//

import SwiftUI

struct PreventTextTruncating: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Fixed Size")
                .font(.largeTitle)
            Text("Prevent Text Truncating")
                .foregroundColor(.gray)
            Text("Use the fixedSize modifier to prevernt text from truncating when layoutPriority won't work.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .foregroundColor(.black)

            Form {
                Section(
                    header: Text("Text in a Form")
                        .font(.largeTitle)
                ) {
                    Text("Sometimes you get text that truncates like this:")

                    Text("This text goes on for too long and will eventually get truncated if you don't use the fixedSize modifier.")
                        .listRowBackground(Color.pink)
                        .layoutPriority(1) // Does not show truncated text

                    Text("This text goes on far too long and fill will eventually get truncated if you don't use the fixedSize modifier.")
                        .listRowBackground(Color.green)
                        // Use fixed size to expand the text vertically in this situation.
                        .fixedSize(horizontal: false, vertical: true)
                }
            }
        }
        .font(.title)
    }
}

struct PreventTextTruncating_Previews: PreviewProvider {
    static var previews: some View {
        PreventTextTruncating()
    }
}
