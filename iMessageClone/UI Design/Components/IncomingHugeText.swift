//
//  IncomingHugeText.swift
//  iMessageClone
//
//  Created by Amos from getstream.io on 13.12.2021.
//

import SwiftUI

struct IncomingHugeText: View {
    let incomingBubble = Color(#colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1607843137, alpha: 1))
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image("incomingTail")
                .padding(EdgeInsets(top: 0, leading: -5, bottom: -2, trailing: 0))
            RoundedRectangle(cornerRadius: 16)
                .fill(incomingBubble)
                .frame(width: 300, height: 240)
                .overlay(Text("Hei, tilauksesi on valmis noudettavaksi tilaunumerolla 722340!. Löydät sen noutopisteestä, joka sijaitsee palvelukeskuksessas. Palvelemme vuoronumerolla VARAA JA NOUDA. Muista henkilöllisyystodistus, jonka olet vastaanottanut säskopostitse. Voit noutaa tilauksesi vaikka heti").font(.body).padding(.horizontal))
        }
        .contextMenu{
            Label("Copy", systemImage: "doc.on.doc")
            Label("Translate", systemImage: "t.square")
            Label("More", systemImage: "ellipsis.circle")
        }

    }
}

struct  IncomingHugeText_Previews: PreviewProvider {
    static var previews: some View {
        IncomingHugeText()
            .preferredColorScheme(.dark)
    }
}

