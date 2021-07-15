//
//  GroupIntroduction.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/15.
//

import SwiftUI

// A Group has no default visual representation on the screen. Instead, it
// is used as a container, similar to the VStack or HStack. There are differet
// reasons why you might wants to group up your views which you will learn
// about in this section.

// This is a pull-in view.

struct GroupIntroduction: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Group")
                .font(.largeTitle)
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            Text("A Group view can be used compose a view with more than ten (10) child views.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.blue)
                .foregroundColor(.white)

            Text("View 4")
            Text("View 5")
            Text("View 6")
            Text("View 7")
            Text("View 8")
            Text("View 9")
            Group { // 10th view
                Text("Child View 1 (Inside Group)")
                Text("Child View 2 (Inside Group)")
            }
        }
    }
}

// As mentioned in the "Understanding the Syntax" chapter, a container cannot have
// more than ten views.

// A Group view can be used to continue adding more views to the screen.

struct GroupIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        GroupIntroduction()
    }
}
