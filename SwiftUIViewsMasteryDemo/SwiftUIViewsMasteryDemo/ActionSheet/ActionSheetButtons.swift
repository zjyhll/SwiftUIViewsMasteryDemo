//
//  ActionSheetButtons.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/17.
//

import SwiftUI

struct ActionSheetButtons: View {
    @State private var presentingActionSheet = false
    var actionSheet = ActionSheet(
        title: Text("Action Sheet Title"),
        buttons: [
            .default(Text("Default Button"), action: {
                // default button code
            }),
            .destructive(Text("Destructive Button"), action: {
                // destructive button code
            }),
            .cancel(Text("Exit"), action: {
                // cancel button code
            })
        ])
    var body: some View {
        VStack(spacing: 20) {
            Text("ActionSheet")
                .font(.largeTitle)
            Text("Buttons")
                .foregroundColor(.gray)
            Text("The buttons are not customizable. You uses the Text view for inside the button but you cannot even customize this. You can change the text of the Cancel button.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.orange)
                .foregroundColor(.white)
                .font(.title)

            Button("Show ActionSheet") {
                presentingActionSheet = true
            }
            Spacer()
        }
        .actionSheet(isPresented: $presentingActionSheet, content: {
            actionSheet
        })
    }
}

struct ActionSheetButtons_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetButtons()
    }
}
