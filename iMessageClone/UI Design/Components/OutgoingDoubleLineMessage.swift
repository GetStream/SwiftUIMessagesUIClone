//
//  OutgoingDoubleLineMessage.swift
//  iMessageClone
//
//  Created by Amos from getstream.io on 13.12.2021.
//

import SwiftUI

struct OutgoingDoubleLineMessage: View {
    let outgoingBubble = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image("outgoingTail")
                .padding(EdgeInsets(top: 0, leading: 0, bottom: -2, trailing: -5))
            RoundedRectangle(cornerRadius: 16)
                .fill(outgoingBubble)
                .frame(width: 180, height: 58)
                .overlay(Text("Let's get lunch. How about pizza?").font(.body))
        }
    }
}

struct  OutgoingDoubleLineMessage_Previews: PreviewProvider {
    static var previews: some View {
        OutgoingDoubleLineMessage()
            .preferredColorScheme(.dark)
    }
}

