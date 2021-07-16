//
//  PresentingWithIdentifiable.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/17.
//

import SwiftUI

// 1. Create an Identifiable struct to hold the data
struct DetailInfo: Identifiable {
    var id = UUID() // conform to Identifiable
    let image: Image
}

struct PresentingWithIdentifiable: View {
    // 2. Create State var for the data
    @State private var details: DetailInfo?

    var body: some View {
        Button("Show Details") {
            // 3. Trigger showing the sheet
            details = DetailInfo(image: Image(systemName: "star.circle"))
        }
        // Listen for State variable changes to non-nil
        .sheet(item: $details) { detailInfo in
            DetailSheet(details: detailInfo)
        }
    }
}

struct DetailSheet: View {
    @Environment(\.presentationMode) var presentationMode
    let details: DetailInfo
    var body: some View {
        VStack(spacing: 20) {
            details.image
                .font(.largeTitle)
                .foregroundColor(.purple)
            Text("Sheet")
                .font(.largeTitle)
            Text("Presenting with Identifiable")
                .font(.title)
                .foregroundColor(.gray)
            Text("By changing the State variable to a non nil value, you can trigger the Sheet to show.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.purple)
            Spacer()
            Button("Dismiss") {
                presentationMode.wrappedValue.dismiss()
            }
            .accentColor(.purple)
        }
        .padding(.top, 40)
    }
}

struct PresentingWithIdentifiable_Previews: PreviewProvider {
    static var previews: some View {
        PresentingWithIdentifiable()
            .preferredColorScheme(.dark)
    }
}
