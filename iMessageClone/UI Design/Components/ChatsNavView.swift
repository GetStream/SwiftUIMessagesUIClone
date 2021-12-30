//
//  ChatsNavView.swift
//  iMessageClone
//
//  Created by Amos from getstream.io on 13.12.2021.
//

import SwiftUI

struct  ChatsNavView: View {
    let outgoingMessaageBubble = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    let incomingMessaageBubble = Color(#colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1607843137, alpha: 1))
    let accentPrimary = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    var body: some View {
        NavigationView {
           SearchBarView()
                .navigationTitle("")
                //.navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(
                    leading:
                        VStack(alignment: .trailing, spacing: 2) {
                            HStack {
                                Image(systemName: "chevron.left")
                                    .foregroundColor(accentPrimary)
                                Text("Chats View")
                                Spacer(minLength: 50)
                               
                                Image("amos")
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 40, height: 40)
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 2))
                            }
                            HStack(spacing: 4) {
                                Text("Amos")
                                    .font(.caption2)
                                Image(systemName: "chevron.right")
                                    .font(.system(size: 8))
                            }
                        })
        }
        .frame(height: 80)
    }
}

struct  ChatsNavView_Previews: PreviewProvider {
    static var previews: some View {
        ChatsNavView()
            .preferredColorScheme(.dark)
    }
}
