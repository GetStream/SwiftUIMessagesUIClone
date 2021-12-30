
//
//  IncomingEmailAndCode.swift
//  iMessageClone
//
//  Created by Amos from getstream.io on 13.12.2021.
//

import SwiftUI

struct IncomingEmailAndCode: View {
    let incomingBubble = Color(#colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1607843137, alpha: 1))

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image("incomingTail")
                .padding(EdgeInsets(top: 0, leading: 0, bottom: -2, trailing: -5))
            RoundedRectangle(cornerRadius: 16)
                .fill(incomingBubble)
                .frame(width: 220, height: 58)
                .overlay(Text("miinalainen@gmail.com").font(.body) + Text(" Slack login code:").font(.body) + Text(" 229334").underline())
        }
    }
}

struct  IncomingEmailAndCode_Previews: PreviewProvider {
    static var previews: some View {
        IncomingEmailAndCode()
            .preferredColorScheme(.dark)
    }
}

