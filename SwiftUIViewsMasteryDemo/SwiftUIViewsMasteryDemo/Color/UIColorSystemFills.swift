//
//  UIColorSystemFills.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by 刘勇刚 on 2021/7/15.
//

import SwiftUI

struct UIColorSystemFills: View {
    @State private var sliderValue: CGFloat = 1.0
    @State private var switchValue = false

    var body: some View {
        ZStack {
            Color.yellow

            VStack {
                Text("Color")
                    .font(.largeTitle)
                Text("Using System Fills")
                    .font(.title)
                    .foregroundColor(.white)
                Text("There are also UIColor \"fills\" that have specific purposes you could take advantage of.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .font(.title)
                    .background(Color.white)

                VStack(spacing: 20) {
                    Text("This view uses the UIColor quaternarySystemFill. Use it to fill in large areas like this.")
                        .font(.title)
                        .layoutPriority(2)
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(UIColor.systemFill))
                        .overlay(Text("systemFill"))
                    Text("Use .systemFill for thin or small shapes. Like Apple uses on the Slider track:")
                        .font(.body)
                        .layoutPriority(1)
                    Slider(value: $sliderValue)

                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(UIColor.tertiarySystemFill))
                        .overlay(Text("tertiarySystemFill"))

                    Toggle(isOn: $switchValue, label: {
                        Text("The Toggle uses secondarySystemFill for its background fill")
                            .font(.body)
                    })

                    Button("Using teriarySystemFill for Buttons", action: {})
                        .padding()
                        .background(Capsule().fill(Color(UIColor.tertiarySystemFill)))
                        .font(.body)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.white, lineWidth: 1)
                )
                .padding(.horizontal)

            }
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0)
            .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom ?? 0)
        }
        .edgesIgnoringSafeArea(.vertical)
    }
}

struct UIColorSystemFills_Previews: PreviewProvider {
    static var previews: some View {
        UIColorSystemFills()
    }
}
