//
//  PassingDataInto.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/17.
//

import SwiftUI

// 1. Create an Identifiable struct to hold the action sheet data
struct ActionSheetData: Identifiable {
    var id = UUID() // conform to Identifiable
    let title: String
    let message: String
}

struct PassingDataInto: View {
    // 2. Create State var for the action sheet data
    @State private var actionSheetData: ActionSheetData?

    var body: some View {
        VStack(spacing: 20) {
            Text("ActionSheet")
                .font(.largeTitle)
            Text("Passing Data Into")
                .font(.title)
                .foregroundColor(.gray)
            Text("You may need to pass data into your ActionSheet. For this scenario, you use a different function to attach an ActionSheet to the view.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.yellow)
                .foregroundColor(.black)

            Button("Show ActionSheet with Data") {
                // 3. Making the Identifiable State var not nil will trigger showing the action sheet
                actionSheetData = ActionSheetData(title: "Options", message: "Choose an option:")
            }
        }
        // 4. Attach action sheet to view and observe the Identifiable State var for change from
        // nil to non-nil value
        .actionSheet(item: $actionSheetData) { actionSheetMessage in
            // 5. Return an ActionSheet with your data
            ActionSheet(
                title: Text(actionSheetData!.title),
                message: Text(actionSheetData!.message)
            )
        }
    }
}

struct PassingDataInto_Previews: PreviewProvider {
    static var previews: some View {
        PassingDataInto()
            .preferredColorScheme(.dark)
    }
}
