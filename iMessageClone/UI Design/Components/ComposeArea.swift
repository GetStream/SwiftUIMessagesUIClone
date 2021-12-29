//
//  ComposeArea.swift
//  iMessageClone
//
//  Created by amos.gyamfi@getstream.io on 13.12.2021.
//

import SwiftUI

struct   ComposeArea: View {
    let outgoingMessaageBubble = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    let incomingMessaageBubble = Color(#colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1607843137, alpha: 1))
    let accentPrimary = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    @State private var write: String = ""
    var body: some View {
        HStack {
            Image(systemName: "camera.fill")
                .font(.title)
            Image("store")
            ZStack {
                RoundedRectangle(cornerRadius: 18)
                    .stroke()
                HStack{
                    TextField("Write a message", text: $write)
                        .font(.headline)
                    Spacer()
                    Image(systemName: "waveform.circle.fill")
                        .font(.title)
                }
                .padding(EdgeInsets(top: 3, leading: 8, bottom: 3, trailing: 3))
            }
            .frame(width: 249, height: 33)
        }
        .foregroundColor(Color(.systemGray))
    }
}

struct   ComposeArea_Previews: PreviewProvider {
    static var previews: some View {
        ComposeArea()
            .preferredColorScheme(.dark)
    }
}
