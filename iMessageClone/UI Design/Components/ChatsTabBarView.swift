//
//  ChatsTabBarView.swift
//  iMessageClone
//
//  Created by Amos from getstream.io on 13.12.2021.
//

import SwiftUI

struct  ChatsTabBarView: View {
    let outgoingMessaageBubble = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    let tabBarBg = Color(#colorLiteral(red: 0.1960784314, green: 0.1960784314, blue: 0.2, alpha: 1))
    let accentPrimary = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .frame(width: .infinity, height: 80)
                .foregroundColor(tabBarBg.opacity(0.2))
                .ignoresSafeArea(.all)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    Image("photos")
                    Image("appstore")
                    Image("memoji")
                    Image("digital")
                    Image("fitness")
                    Image("store")
                    Image("time")
                    Image("touch")
                    Image("app")
                    Image("photos")
                }
                .padding(EdgeInsets(top: 12, leading: 16, bottom: 0, trailing: 0))
            }
            
        }
    }
}

struct  ChatsTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        ChatsTabBarView()
            .preferredColorScheme(.dark)
    }
}
