//
//  AlertIntroduction.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/17.
//

import SwiftUI

// The Alert is a view that is much like the ActionSheet view in that it is presented under
// some condition. You create a State variable to observe and when the variable changes,
// you present your Alert. You use a function on a View (.alert) to bind the State variable
// to the presentation of your Alert. You can show static Alert views or pass data into Alert
// views. You will learn how to do that in this chapter.

struct AlertIntroduction: View {
    var body: some View {
        VStack {
//            Alert(
//                title: Text("Title"),
//                message: Text("Message of the Alert"),
//                primaryButton: Alert.Button.default(Text("Primary"), action: {
//                    // primary button code
//                }),
//                secondaryButton: Alert.Button.destructive(Text("Secondary"), action: {
//                    // secondary button code
//                })
//            )
        }
    }
}

// There are really just 3 parts to an Alert:

// 1. The title
// 2. The message (optional)
// 3. The Buttons (optional)
//  1. Default have blue text
//  2. Destructive buttons have red text
//  3. If you do not specify any buttons then an OK button with blue text will be added
//     to your alert. You can also create a Cancel button with a built-in function
//     (Alert.Button.cancel())
//
//  Now let's take a look at the different ways to present an Alert.

struct AlertIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        AlertIntroduction()
    }
}
