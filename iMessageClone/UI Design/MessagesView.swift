//
//  MessagesView.swift
//  iMessageClone
//
//  Created by amos.gyamfi@getstream.io on 13.12.2021.
//

import SwiftUI

struct MessagesView: View {
    
    let outgoingMessaageBubble = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    let incomingMessaageBubble = Color(#colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1607843137, alpha: 1))
    let readIndicator = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 0))
    @State private var score = 0
    var messages: [MessagesStructure] = []
    
    var body: some View {
        VStack {
            NavigationView {
               SearchBarView()
                    .navigationTitle("Messages")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarItems(
                        leading:
                            Button("Edit") {
                                print("Pressed Edit")
                                },
                       
                        trailing:
                            Button {
                                print("start conversation")
                            } label: {
                                Image(systemName: "square.and.pencil")
                            }
                    )
            }
            .frame(height: 80)
            
            Spacer()
            
            VStack {
                List(messages) {
                    item in
                    HStack {
                        ZStack { // This helps to align the unread indicator, profile image and the text. Opacity of the color view is set to nil.
                            readIndicator
                                .frame(width: 11, height: 11)
                            Image(item.unreadIndicator)
                        }
                        
                        Image(item.avatar)
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 45, height: 45)
                            
                        VStack(alignment: .leading){
                                
                            HStack{
                                Text("\(item.name)")
                                Spacer()
                                HStack {
                                    Text("\(item.timestanp)")
                                        .font(.subheadline)
                                    .foregroundColor(.secondary)
                                    Image(systemName: "chevron.right")
                                }
                            }
                            Text("\(item.messageSummary)")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                            
                        }
                    }
                } //LIST STYLES
                .listStyle(.plain)
        }
    }
}
struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView(messages: MessageData)
            .preferredColorScheme(.dark)
    }
}
