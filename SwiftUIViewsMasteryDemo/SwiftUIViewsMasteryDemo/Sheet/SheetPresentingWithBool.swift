//
//  SheetPresentingWithBool.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/17.
//

import SwiftUI

struct SheetPresentingWithBool: View {
    @State private var presentingSheet = false
    var body: some View {
        Button("Show modal") {
            presentingSheet = true
        }
        .sheet(isPresented: $presentingSheet) {
            ModalView(title: "Sheet", subtitle: "Presenting with Bool")
        }
    }
}

struct ModalView: View {
    @Environment(\.presentationMode) var presentationMode
    let title: String
    let subtitle: String

    var body: some View {
        VStack(spacing: 20) {
            Text(title)
                .font(.largeTitle)
            Text(subtitle)
                .font(.title)
                .foregroundColor(.gray)
            Text("By changing the State variable, you can trigger the Sheet to show")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.red)
            Spacer()
            Button("Dismiss") {
                presentationMode.wrappedValue.dismiss()
            }
            .accentColor(.red)
        }
    }
}

struct SheetPresentingWithBool_Previews: PreviewProvider {
    static var previews: some View {
        SheetPresentingWithBool()
    }
}
