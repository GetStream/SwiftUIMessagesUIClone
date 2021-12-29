//
//  SearchBarView.swift
//  iMessageClone
//
//  Created by amos.gyamfi@getstream.io on 13.12.2021.
//

import SwiftUI

struct SearchBarView: View {
    
    let outgoingMessaageBubble = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    let searchBg = Color(#colorLiteral(red: 0.462745098, green: 0.462745098, blue: 0.5019607843, alpha: 1))
    let unreadIndicator = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    @State private var search: String = ""
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(searchBg.opacity(0.24))
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color(.systemGray))
                TextField("Search", text: $search)
                Spacer()
                Image(systemName: "mic.fill")
                    .foregroundColor(Color(.systemGray))
            }
            .padding(.horizontal)
        }
        .frame(width: 358, height: 36)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
            .preferredColorScheme(.dark)
    }
}
