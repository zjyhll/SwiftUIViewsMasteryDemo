//
//  ContextMenuIntroduction.swift
//  SwiftUIViewsMasteryDemo
//
//  Created by RecherJ on 2021/7/17.
//

import SwiftUI

// The ContextMenu modifier allows you to attach a menu to any view on your screen.
// With a long-press, the menu you configure will appear. No gestures are needed
// to make this work.

struct ContextMenuIntroduction: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("ContextMenu")
                .font(.largeTitle)
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            Text("The ContextMenu can be attached to most views. You don't need gestures make them work.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.yellow)
                .foregroundColor(.white)
            HStack {
                Text("Get help")
                Spacer()
                Image(systemName: "questionmark.diamond.fill")
                    .font(.title)
                    .foregroundColor(.orange)
                    .frame(width: 44, height: 44)
                    .contextMenu {
                        Button(action: {}) {
                            Text("Add color")
                            Image(systemName: "eyedropper.full")
                        }
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "circle.lefthalf.fill")
                            Text("Change constrast")
                        }
                    }
            }
            .padding()
        }
    }
}

// Note how you do not have to provide an HStack for the Text and Image
// inside the button. The order of the Text and Image does not matter
// either (Text and Image are swapped in the second button).

struct ContextMenuIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuIntroduction()
    }
}
