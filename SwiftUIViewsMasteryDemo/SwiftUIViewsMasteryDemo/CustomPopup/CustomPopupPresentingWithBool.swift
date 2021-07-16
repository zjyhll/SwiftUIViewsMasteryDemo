//
//  CustomPopupPresentingWithBool.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/17.
//

import SwiftUI

// From this chapter, you have a pretty good idea of the different ways you can present other views
// in your apps. But you might still find that none of these options are quite what you need.
// In that case, you can create your own custom popup and use the same concept of a boolean
// state variable to control presenting and hiding it.

struct CustomPopupPresentingWithBool: View {
    @State private var showingModal = false
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Text("Custom Popup")
                    .font(.largeTitle)
                Text("Introduction")
                    .font(.title)
                    .foregroundColor(.gray)
                Text("You can create your own modal popup with the use of a ZStack and a State variable.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .font(.title)
                    .background(Color.yellow)
                    .foregroundColor(.white)

                Button(action: {
                    showingModal = true
                }, label: {
                    Text("Show popup")
                })
                Spacer()
            }
            if $showingModal.wrappedValue {
                ZStack {
                    Color.black.opacity(0.4)
                        .edgesIgnoringSafeArea(.vertical)
                    VStack(spacing: 20) {
                        Text("Popup")
                            .bold()
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.orange)
                            .foregroundColor(.white)
                        Spacer()

                        Button(action: {
                            showingModal = false
                        }, label: {
                            Text("Close")
                        })
                        .padding()
                    }
                    .frame(width: 300, height: 200)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 20)
                }
            }
        }
    }
}

struct CustomPopupPresentingWithBool_Previews: PreviewProvider {
    static var previews: some View {
        CustomPopupPresentingWithBool()
    }
}
