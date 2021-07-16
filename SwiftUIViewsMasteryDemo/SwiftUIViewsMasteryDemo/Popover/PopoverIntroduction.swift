//
//  PopoverIntroduction.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by 刘勇刚 on 2021/7/17.
//

import SwiftUI

// You can think of a Popover as a combination between a Sheet and ContextMenu.
// You attach a Popover to a view and specify where you want it to appear.
// There will be an arrow that points to the view that triggers the Popover.

// Popovers appear like Sheets on smaller devices (such as iPhones) and appear
// like ContextNenus on large devices (such as iPads).

struct PopoverIntroduction: View {
    @State private var showPopover = false
    var body: some View {
        ZStack {
            Color("Theme1Background")
            Button(action: {
                showPopover = true
            }, label: {
                Image(systemName: "questionmark.circle.fill")
                    .font(.largeTitle)
            })
            .popover(isPresented: $showPopover, arrowEdge: .top) {
                VStack(spacing: 20) {
                    Text("Popover")
                        .font(.largeTitle)
                    Text("Show from Bool")
                        .font(.title)
                        .foregroundColor(.gray)
                    Text("By changing the State variable, you can trigger the Popover to show")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .font(.title)
                        .background(Color.blue)
                        .foregroundColor(.white)
                }
            }
        }
        .edgesIgnoringSafeArea(.vertical)
    }
}

struct PopoverIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        PopoverIntroduction()
    }
}
