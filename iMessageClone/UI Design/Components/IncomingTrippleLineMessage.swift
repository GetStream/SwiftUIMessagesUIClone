//
//  IncomingTrippleLineMessage.swift
//  iMessageClone
//
//  Created by Amos from getstream.io on 13.12.2021.
//

import SwiftUI

struct IncomingTrippleLineMessage: View {
    let incomingBubble = Color(#colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1607843137, alpha: 1))
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image("incomingTail")
                .padding(EdgeInsets(top: 0, leading: -5, bottom: -2, trailing: 0))
            RoundedRectangle(cornerRadius: 16)
                .fill(incomingBubble)
                .frame(width: 250, height: 79)
                .overlay(Text("I don't know why people are so anti pineapple pizza. I kind of like it.").font(.body).padding(.horizontal))
        }
    }
}

struct  IncomingTrippleLineMessage_Previews: PreviewProvider {
    static var previews: some View {
        IncomingTrippleLineMessage()
            .preferredColorScheme(.dark)
    }
}

