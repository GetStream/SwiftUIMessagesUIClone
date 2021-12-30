//
//  ChatsView.swift
//  iMessageClone
//
//  Created by Amos from getstream.io on 13.12.2021.
//

import SwiftUI

struct  ChatsView: View {
    let outgoingMessaageBubble = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    let incomingMessaageBubble = Color(#colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1607843137, alpha: 1))
    let accentPrimary = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    var body: some View {
        VStack{
            ChatsNavView()
            ScrollView(.vertical){
                // Consecutive incoming
                VStack(spacing: 2) {
                    Text("Mon 9. Aug, 20.35")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                    HStack {
                        IncomingDoubleLineMessage()
                        Spacer()
                    }
                    HStack {
                        IncomingDoubleLineMessage()
                        Spacer()
                    }
                }
                
                // Outgoing
                VStack(spacing: 2) {
                    Text("Tues 24. Aug, 20.25")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                    HStack {
                        Spacer()
                        OutgoingDoubleLineMessage()
                    }
                }
                
                // Incoming
                VStack(spacing: 2) {
                    Text("Fri 24. Aug, 15.17")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                    HStack {
                        IncomingTrippleLineMessage()
                        Spacer()
                    }
                }
                
                // Consecutive outgoing
                VStack(spacing: 2) {
                    Text("Tues 24. Aug, 20.43")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                    HStack {
                        Spacer()
                        OutgoingMultipleLineMessage()
                    }
                    HStack {
                        Spacer()
                        OutgoingDoubleLineMessage()
                    }
                }
               
                // Consecutive incoming
                VStack(spacing: 2) {
                    Text("Tues 31. Aug, 11.07")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                    HStack {
                        IncomingSingleLineMessage()
                        Spacer()
                    }
                    
                    HStack {
                        IncomingDoubleLineMessage()
                        Spacer()
                    }
                    HStack {
                        IncomingDoubleLineCode()
                        Spacer()
                    }
                }
                
                VStack(spacing: 2) {
                    Text("Mon 23. Aug, 11.00")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                    HStack {
                        Spacer()
                        OutgoingMultipleLineMessage()
                    }
                }
                
                // Consecutive incoming
                VStack(spacing: 2) {
                    Text("Sun 22. Aug, 12.07")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                    HStack {
                        IncomingHugeText()
                        Spacer()
                    }
                    
                    HStack {
                        IncomingEmailAndCode()
                        Spacer()
                    }
                    HStack {
                        IncomingDoubleLineCode()
                        Spacer()
                    }
                }
            } // Scroll area
            .padding(.horizontal)
            
            ComposeArea()
                .padding(.bottom, 8)
            ChatsTabBarView()
        }
        //.padding()
    }
}

struct  ChatsView_Previews: PreviewProvider {
    static var previews: some View {
        ChatsView()
            .preferredColorScheme(.dark)
    }
}
        
