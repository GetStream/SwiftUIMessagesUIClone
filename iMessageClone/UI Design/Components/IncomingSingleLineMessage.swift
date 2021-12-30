//
//  IncomingSingleLineMessage.swift
//  iMessageClone
//
//  Created by Amos from getstream.io on 13.12.2021.
//

import SwiftUI

struct IncomingSingleLineMessage: View {
    let outgoingBubble = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    let incomingBubble = Color(#colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1607843137, alpha: 1))
    @State private var backgroundColor = Color.red
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image("incomingTail")
                .padding(EdgeInsets(top: 0, leading: -5, bottom: -2, trailing: 0))
            RoundedRectangle(cornerRadius: 16)
                .fill(incomingBubble)
                .frame(width: 200, height: 32)
                .overlay(Text("miinalainen@gmail.com").font(.body))
        }
        .contextMenu{
            Label("New Mail Message", systemImage: "envelope")
            Label("Send Message", systemImage: "message")
            Label("FaceTime", systemImage: "video")
            Label("FaceTime Audio", systemImage: "phone")
            Label("Add to Contacts", systemImage: "person.crop.circle.badge.plus")
            Label("doc.on.doc", systemImage: "trash")
        }
    }
}

struct  IncomingSingleLineMessage_Previews: PreviewProvider {
    static var previews: some View {
        IncomingSingleLineMessage()
            .preferredColorScheme(.dark)
    }
}

