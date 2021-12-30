//
//  OutgoingSingleLine.swift
//  iMessageClone
//
//  Created by Amos from getstream.io on 13.12.2021.
//

import SwiftUI

struct OutgoingSingleLine: View {
    let outgoingBubble = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    let incomingBubble = Color(#colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1607843137, alpha: 1))
    @State private var backgroundColor = Color.red
    var body: some View {
        VStack(spacing: 24) {
            HStack(alignment: .top) {
                ZStack(alignment: .bottomTrailing) {
                    Image("outgoingTail")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: -2, trailing: -5))
                    RoundedRectangle(cornerRadius: 16)
                        .fill(outgoingBubble)
                        .frame(width: 150, height: 32)
                        .overlay(Text("Hi, how are you?").font(.body))
                }
                
                Image(systemName: "arrow.up.circle.fill")
                    .renderingMode(.original)
                    .font(.title2)
                    .foregroundColor(outgoingBubble)
            }
            
            HStack {
                Spacer()
                Image(systemName: "xmark.circle.fill")
                    .font(.title2)
            }
            .frame(width: 182)
        }
    }
}

struct  OutgoingSingleLine_Previews: PreviewProvider {
    static var previews: some View {
        OutgoingSingleLine()
            .preferredColorScheme(.dark)
    }
}

