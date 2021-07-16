//
//  AlertPresentingWithBool.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/17.
//

import SwiftUI

struct AlertPresentingWithBool: View {
    // 1. Create a State variable to control presenting the alert
    @State private var presentingAlert = false

    var body: some View {
        VStack(spacing: 20) {
            Text("Alert")
                .font(.largeTitle)
            Text("Presenting with Bool")
                .font(.title)
                .foregroundColor(.gray)

            Text("By changing a State variable, you can trigger the Alert to show")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.yellow)
                .foregroundColor(.black)

            Button("Show Alert") {
                // 2. change the State variable to trigger presenting the alert
                presentingAlert = true
            }
            Spacer()
        }
        // 3. Use the alert function to listen to the State variable for changes
        // and return an ActionSheet object when true
        .alert(isPresented: $presentingAlert, content: {
            Alert(title: Text("Title of the Alert"))
        })
    }
}

// Notice if no buttons are specified in the Alert, a default OK button is added.

struct AlertPresentingWithBool_Previews: PreviewProvider {
    static var previews: some View {
        AlertPresentingWithBool()
            .preferredColorScheme(.dark)
    }
}
