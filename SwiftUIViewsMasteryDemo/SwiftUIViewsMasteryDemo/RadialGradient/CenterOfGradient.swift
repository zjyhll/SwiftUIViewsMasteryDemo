//
//  CenterOfGradient.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/16.
//

import SwiftUI

struct CenterOfGradient: View {
    var body: some View {
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [.white, Color("Theme5BackgroundColor")]),
                center: .bottom,
                startRadius: 10,
                endRadius: 420
            )
            .edgesIgnoringSafeArea(.vertical)

            VStack(spacing: 30) {
                Rectangle()
                    .fill(RadialGradient(
                            gradient: Gradient(colors: [.white, Color("Theme5DarkAccentColor")]),
                            center: .bottomTrailing,
                            startRadius: 0,
                            endRadius: 15
                        )
                    )
                    .frame(width: 80, height: 80)
                    .rotationEffect(.degrees(45))
                    .shadow(color: Color(UIColor.darkGray), radius: 20, x: 0, y: -20)
                    .padding(30)

                Text("RadialGradient")
                    .font(.largeTitle)
                Text("Center of Gradient")
                    .foregroundColor(Color(UIColor.darkGray))
                Text("You can move where the center point of gradient is. It uses the UnitPoint type so you can easily adjust it.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("Theme5DarkAccentColor"))
                    .foregroundColor(.white)

                HStack(spacing: 40) {
                    VStack(alignment: .leading) {
                        Text("1. topLeading")
                        Text("2. top")
                        Text("3. topTrailing")
                        Text("4. leading")
                        Text("5. center")
                        Text("6. trailing")
                        Text("7. bottomLeading")
                        Text("8. bottom")
                        Text("9. bottomTrailing")
                    }
                    .font(.body)
                    Image("Unit")
                        .resizable()
                        .frame(width: 150, height: 150)
                }

                Spacer()
            }
            .font(.title)
        }
    }
}

struct CenterOfGradient_Previews: PreviewProvider {
    static var previews: some View {
        CenterOfGradient()
    }
}
