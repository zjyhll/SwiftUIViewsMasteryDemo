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
            Text("Solution")
                .font(.title)
                .foregroundColor(.gray)
            Text("3. Now, this text view has third highest priority.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .foregroundColor(.black)
                .layoutPriority(1) // Second Priority
            Text("1. This VStack has the HIGHEST layout priority:")
            VStack(alignment: .leading) {
                Text("Lorem Ipsum")
                    .font(.largeTitle)
                // You want this text to expand
                Text("Dolor amet man braid bushwick salvia, vinyl art party pickled exercitation.")
                    .foregroundColor(.yellow)
                    .layoutPriority(1) // Highest priority among these sibling views
                Text("Laborum bitters vice, letterpress pariatur pour-over iceland.")
                    .font(.caption)
            }
            .padding()
            .layoutPriority(3) // Highest priority among these sibling views
            Text("This still didn't solve the problem. Why?")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .foregroundColor(.black)
                .layoutPriority(2) // Second highest
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
