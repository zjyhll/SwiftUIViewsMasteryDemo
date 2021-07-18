//
//  SolvingPriorityProblem.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/18.
//

import SwiftUI

struct SolvingPriorityProblem: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Layout Priority")
                .font(.largeTitle)
            Text("Solving Priorities")
                .font(.title)
                .foregroundColor(.gray)
            Text("Take a look at this problem here:")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .foregroundColor(.black)
                .layoutPriority(1) // Second Priority

            VStack(alignment: .leading) {
                Text("Lorem Ipsum")
                    .font(.largeTitle)
                // You want this text to expand
                Text("Dolor amet man braid bushwick salvia, vinyl art party pickled exercitation.")
                    .foregroundColor(.yellow)
                    // Make highest priority
                    .layoutPriority(100)
                Text("Laborum bitters vice, letterpress pariatur pour-over iceland.")
                    .font(.caption)
            }
            .padding()
            Text("This still didn't solve the problem. Why?")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .foregroundColor(.black)
                .layoutPriority(2) // First Priority (highest number)
        }
        .font(.title)
    }
}

struct SolvingPriorityProblem_Previews: PreviewProvider {
    static var previews: some View {
        SolvingPriorityProblem()
            .preferredColorScheme(.dark)
    }
}
