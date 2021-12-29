//
//  IncomingDoubleLineMessage.swift
//  iMessageClone
//
//  Created by amos.gyamfi@getstream.io on 13.12.2021.
//

import SwiftUI

struct IncomingDoubleLineMessage: View {
    let incomingBubble = Color(#colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1607843137, alpha: 1))
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image("incomingTail")
                .padding(EdgeInsets(top: 0, leading: -5, bottom: -2, trailing: 0))
            RoundedRectangle(cornerRadius: 16)
                .fill(incomingBubble)
                .frame(width: 240, height: 58)
                .overlay(Text("Let's do it!. I'm in a meeting until noon.").font(.body))
        }
    }
}

struct  IncomingDoubleLineMessage_Previews: PreviewProvider {
    static var previews: some View {
        IncomingDoubleLineMessage()
            .preferredColorScheme(.dark)
    }
}

