//
//  HeaderView.swift
//  iMessageClone
//
//  Created by amos.gyamfi@getstream.io on 13.12.2021.
//

import SwiftUI

struct  HeaderView: View {
    let outgoingMessaageBubble = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    let incomingMessaageBubble = Color(#colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1607843137, alpha: 1))
    let accentPrimary = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    var body: some View {
        HStack(spacing: 24) {
            Text("Edit")
                .foregroundColor(accentPrimary)
            
            Spacer()
            
            ZStack {
                Circle()
                    .fill(accentPrimary)
                    .frame(width: 30, height: 30)
                Image(systemName: "square.and.pencil")
            }
        }
    }
}

struct  HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .preferredColorScheme(.dark)
    }
}
