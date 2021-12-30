//
//  OutgoingMultipleLineMessage.swift
//  iMessageClone
//
//  Created by Amos from getstream.io on 13.12.2021.
//

import SwiftUI

struct OutgoingMultipleLineMessage: View {
    let outgoingBubble = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image("outgoingTail")
                .padding(EdgeInsets(top: 0, leading: 0, bottom: -2, trailing: -5))
            RoundedRectangle(cornerRadius: 16)
                .fill(outgoingBubble)
                .frame(width: 291, height: 106)
                .overlay(Text("That's perfect. There's a new place on Main St I've been wanting to check out. I hear their hawaiian pizza is off the hook!").font(.body).padding(.horizontal, 12))
        }
    }
}

struct  OutgoingMultipleLineMessage_Previews: PreviewProvider {
    static var previews: some View {
        OutgoingMultipleLineMessage()
            .preferredColorScheme(.dark)
    }
}

