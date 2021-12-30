//
//  IncomingDoubleLineCode.swift
//  iMessageClone
//
//  Created by Amos from getstream.io on 13.12.2021.
//

import SwiftUI

struct IncomingDoubleLineCode: View {
    let incomingBubble = Color(#colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1607843137, alpha: 1))
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image("incomingTail")
                .padding(EdgeInsets(top: 0, leading: -5, bottom: -2, trailing: 0))
            RoundedRectangle(cornerRadius: 16)
                .fill(incomingBubble)
                .frame(width: 240, height: 58)
                .overlay(Text("G-446782").underline() + Text(" is your Google verification code").font(.body))
        }
    }
}

struct  IncomingDoubleLineCode_Previews: PreviewProvider {
    static var previews: some View {
        IncomingDoubleLineCode()
            .preferredColorScheme(.dark)
    }
}

