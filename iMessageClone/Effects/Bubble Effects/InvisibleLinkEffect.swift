//
//  InvisibleLinkEffect.swift
//  iMessageClone
//
//  Created by amos.gyamfi@getstream.io on 18.12.2021.
//

import SwiftUI

struct  InvisibleLinkEffect: View {
    let incomingMessaageBubble = Color(#colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1607843137, alpha: 1))
    let accentPrimary = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    @State private var messageEffect = 0

    var body: some View {
        Text("Send with invisible link")
            .font(.caption)
            .textCase(.uppercase)
    }
}

struct InvisibleLinkEffect_Previews: PreviewProvider {
    static var previews: some View {
        InvisibleLinkEffect()
            .preferredColorScheme(.dark)
    }
}
