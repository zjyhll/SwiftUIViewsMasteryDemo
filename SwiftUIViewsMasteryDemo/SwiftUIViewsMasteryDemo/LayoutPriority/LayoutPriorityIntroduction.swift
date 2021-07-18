//
//  LayoutPriorityIntroduction.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/18.
//

import SwiftUI

// Layout priority tells a parent view which one of its child views should
// be given priority when it comes time to assigning space. This is an
// important concept to understand. The parent view assigns space to the
// child views.

// When you have deeply nested views, you cannot have a top level view view
// assign space to view three levels down. Instead, the parent would give
// priority for space to one of its children with the highest layout priority.
// And then that child would give priority for space to one of its children
// with the highest layout priority and so on.

struct LayoutPriorityIntroduction: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Layout Priority")
                .font(.largeTitle)
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            Text("Use layout priority to tell the parent which child views get priority when it comes to assigning layout space.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.yellow)
                .foregroundColor(.black)
            Text("No layout priority (default is 0)")
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image("profile2")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .mask(Circle())
                    Text("Janice Okoro")
                        .font(.largeTitle)
                }
                Text("Lorem ipsum dolor amet laborum gastropub laboris magna.")
            }
            .padding()
            .foregroundColor(.black)
            .background(Color.yellow.cornerRadius(8))
            .padding(.horizontal)

            Text("Layout priority used")
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image("profile2")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .mask(Circle())
                    Text("Janice Okoro")
                        .font(.largeTitle)
                }
                Text("Lorem ipsum dolor amet laborum gastropub laboris magna.")
            }
            .padding()
            .foregroundColor(.black)
            .background(Color.yellow.cornerRadius(8))
            .padding(.horizontal)
            // Give this view spacing priority over the other child views
            .layoutPriority(2) // Highest priority

        }
    }
}

struct LayoutPriorityIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        LayoutPriorityIntroduction()
            .preferredColorScheme(.dark)
    }
}
