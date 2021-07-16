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

// On an iPad, the Popover does not cover entire screen and an arrow will be present.
// Where the Popover appears depends on the property you set for arrowEdge.
// You can actually omit the arrowEdge parameter and iOS will automatically add one
// for you. (See next page for example.)
// Note, there does not seem to be a way to control the size of the Popup view at this
// time. One recommendation is to not add a background color to the popover view
// because the arrow will not be colored. You can see an example of this on the next
// page.

struct PopoverIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        PopoverIntroduction()
    }
}
