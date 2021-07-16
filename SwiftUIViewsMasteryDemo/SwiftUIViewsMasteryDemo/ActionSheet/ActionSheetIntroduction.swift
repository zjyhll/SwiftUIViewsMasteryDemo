//
//  ActionSheetIntroduction.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/16.
//

import SwiftUI

// The ActionSheet is a view that is presented under some condition. You create a State variable
// to observe and when the variable changes, you present your ActionSheet. You use a function on
// a View (.actionSheet) to bind the State variable to the presentation of your ActionSheet.

struct ActionSheetIntroduction: View {
    // 1. Create a state variable to control presenting the action sheet
    @State private var presented = false
    var body: some View {
        VStack(spacing: 20) {
            Text("Action Sheet")
                .font(.largeTitle)
            Text("Introduction")
                .foregroundColor(.gray)
            Text("The ActionSheet view holds all the parts of an action sheet in one object to be presented.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.blue)
                .foregroundColor(.white)

            Button(action: {
                // 2. Change the state variable to trigger presenting the action sheet
                presented = true
            }, label: {
                Text("Show ActionSheet")
            })
        }
        // 3. Use the action function to listen to the state variable for changes and
        //    return an ActionSheet object when true
        .actionSheet(isPresented: $presented, content: {
            // Remember, the return keyboard is optional for single expressions
            ActionSheet(
                title: Text("Action Sheet Title"),
                message: Text("Action Sheet Message"),
                buttons: [
                    .default(Text("Default Button"), action: {
                        // default button code
                    }),
                    .destructive(Text("destructive Button"), action: {
                        // destructive button code
                    }),
                    .cancel()
            ])
        })
    }
}

// There are really just 3 parts to an ActionSheet:

// 1. The Title
// 2. The message (optional)
// 3. The buttons (optional)
//     1. Default buttons have blue text
//     2. Destructive buttons have red text
//     3. The cancel function will create a Cancel button as you see in the preview that
//        will close the action sheet. Tapping outside the action sheet will also close
//        it.
//
// Now let's take a look at how to present the ActionSheet.

struct ActionSheetIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetIntroduction()
            .preferredColorScheme(.dark)
    }
}
