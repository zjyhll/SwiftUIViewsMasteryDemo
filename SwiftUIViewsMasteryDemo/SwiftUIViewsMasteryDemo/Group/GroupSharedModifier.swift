//
//  GroupSharedModifier.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by 刘勇刚 on 2021/7/15.
//

import SwiftUI

struct GroupSharedModifier: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Group")
                .font(.largeTitle)
            Text("Shared Attributes")
                .font(.title)
                .foregroundColor(.gray)
            Text("You can use a Group to apply a modifier to all its child views.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.blue)
                .foregroundColor(.white)

            Group {
                Image(systemName: "leaf.arrow.circlepath")
                    .font(.largeTitle)
                    .padding()
                Text("Please Recycle")
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)

            Text("Notice the difference between these two:")

            VStack {
                Image(systemName: "leaf.arrow.circlepath")
                    .font(.largeTitle)
                    .padding()
                Text("Please Recycle")
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)

            Text("The modifiers are applied to child views in Groups INDIVIDUALLY.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.blue)
                .foregroundColor(.white)
        }
    }
}

// As you can see, when using a Group view, the modifiers are applied INDIVIDUALLY to
// each view inside.

// This is different than when using other containers, like the VStack. These modifiers
// are applied to the VStack as one view.

struct GroupSharedModifier_Previews: PreviewProvider {
    static var previews: some View {
        GroupSharedModifier()
    }
}
