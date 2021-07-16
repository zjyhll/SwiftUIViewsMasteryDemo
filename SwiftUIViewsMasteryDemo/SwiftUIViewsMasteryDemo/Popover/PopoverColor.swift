//
//  PopoverColor.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by 刘勇刚 on 2021/7/17.
//

import SwiftUI

struct PopoverColor: View {
    @State private var showPopover = false
    @State private var articleName = ""
    var body: some View {
        VStack(spacing: 20) {
            Text("Popover")
                .font(.largeTitle)
            Text("Colors")
                .foregroundColor(.gray)
            Text("You can add color to the Popover but be warned, as of this writing, the arrow will still use the system color. Look closely and you will see the arrow color is not changed.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
            HStack {
                Text("Article Name")
                TextField("Enter Your Article Name", text: $articleName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    showPopover = true
                }, label: {
                    Image(systemName: "exclamationmark.triangle.fill")
                        .font(.title)
                        .foregroundColor(.yellow)
                })
                .popover(isPresented: $showPopover) {
                    ZStack {
                        Color.blue
                        Text("The article name must be greater than 5 characters.")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                }
                .padding()
            }
            Spacer()
        }
        .padding(.top)
        .font(.title)
    }
}

struct PopoverColor_Previews: PreviewProvider {
    static var previews: some View {
        PopoverColor()
    }
}
