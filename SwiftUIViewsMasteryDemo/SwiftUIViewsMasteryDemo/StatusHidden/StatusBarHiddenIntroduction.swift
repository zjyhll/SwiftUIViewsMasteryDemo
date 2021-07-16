//
//  StatusBarHiddenIntroduction.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by 刘勇刚 on 2021/7/17.
//

import SwiftUI

struct StatusBarHiddenIntroduction: View {
    @State private var isOn = false
    var body: some View {
        VStack(spacing: 20) {
            Text("Status Bar Hidden")
                .font(.largeTitle)
            Text("Introduction")
                .foregroundColor(.gray)
            Text("You use the statusBar modifier to hide or show the status bar on demand for any view.")
                .frame(maxWidth: .infinity)
                .font(.title)
                .padding()
                .background(Color.pink)
                .foregroundColor(.black)
                .layoutPriority(1)
            Toggle(isOn: $isOn) {
                Text("Status Bar Hidden")
                Image(systemName: isOn ? "eye.slash" : "eye")
            }
            .padding()
        }
        .font(.title)
        // Include this modifier anywhere in your view
        .statusBar(hidden: isOn)
    }
}

struct StatusBarHiddenIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        StatusBarHiddenIntroduction()
            .preferredColorScheme(.dark)
    }
}
