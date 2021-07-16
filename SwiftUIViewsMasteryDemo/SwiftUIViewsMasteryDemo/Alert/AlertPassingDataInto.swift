//
//  AlertPassingDataInto.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/17.
//

import SwiftUI

// 1. Create an Identifiable struct to hold the alert data
struct AlertData: Identifiable {
    var id = UUID() // conform to Identifiable
    let title: String
    let message: String
}

struct AlertPassingDataInto: View {
    // 2. Create State var for the alert data
    @State private var alertData: AlertData?
    var body: some View {
        VStack(spacing: 20) {
            Text("Alert")
                .font(.largeTitle)
            Text("Passing Data Into")
                .font(.title)
                .foregroundColor(.gray)
            Text("You may need to pass data into your Alert. For this scenario, you use a different function to attach an Alert to the view.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.red)
                .foregroundColor(.white)

            Button("Show Alert with Data") {
                // Making the Identifiable State var not nil will trigger showing the alert
                alertData = AlertData(title: "Warning", message: "<field> is required")
            }
        }
        // 4. Attach alert to the view and observe the Identifiable State var for changes from
        // nil to a non-nil value
        .alert(item: $alertData) { alertData in
            // 5. Return an Alert with your data
            Alert(
                title: Text(alertData.title),
                message: Text(alertData.message)
            )
        }
    }
}

struct AlertPassingDataInto_Previews: PreviewProvider {
    static var previews: some View {
        AlertPassingDataInto()
    }
}
