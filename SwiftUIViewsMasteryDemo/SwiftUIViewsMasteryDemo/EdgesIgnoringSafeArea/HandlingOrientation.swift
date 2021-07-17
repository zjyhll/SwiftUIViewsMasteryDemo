//
//  HandlingOrientation.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/17.
//

import SwiftUI

// In the scenario, the horizontalSizeClass environment variable is being used
// to detect orientation. You also have verticalSizeClass avaliable for your
// use if you need it

// Search for "SwiftUI EnvironmentValues" to find the latest list of environment
// value avaliable to you on the internet.

struct HandlingOrientation: View {
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    var body: some View {
        VStack(spacing: 20) {
            Text("Edges Ignoring Safe Area")
                .frame(maxWidth: .infinity)
                .padding(.top, horizontalSizeClass == UserInterfaceSizeClass.compact ? 50 : 0)
                .background(Color.orange)
                .foregroundColor(.white)
                .font(.largeTitle)
            Text("Handling Orientation")
                .font(.title)
                .foregroundColor(.gray)
            Text("By examining the environment variable for horizontal size class, you can tell if this device is portrait or landscape and set the top padding accordingly.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.orange)
                .foregroundColor(.white)

            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct HandlingOrientation_Previews: PreviewProvider {
    static var previews: some View {
        HandlingOrientation()
            .preferredColorScheme(.dark)
    }
}
