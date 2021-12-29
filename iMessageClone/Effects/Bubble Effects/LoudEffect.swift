//
//  LoudEffect.swift
//  iMessageClone
//
//  Created by amos.gyamfi@getstream.io on 18.12.2021.
//

import SwiftUI

struct  LoudEffect: View {
    let incomingMessaageBubble = Color(#colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1607843137, alpha: 1))
    let outgoingBubble = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    @State private var messageEffect = 0
    @State private var scalingUpGently = false
    @State private var scalingDownGently = false
    @State private var rotatingGently = false

    var body: some View {
        HStack {
            if #available(iOS 15.0, *) {
                ZStack(alignment: .bottomTrailing) {
                    Image("outgoingTail")
                        .rotationEffect(.degrees(scalingUpGently ? -5 : 5), anchor: .topLeading)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: -2, trailing: -5))
                    RoundedRectangle(cornerRadius: 16)
                        .fill(outgoingBubble)
                        .frame(width: 150, height: 32)
                        .overlay(Text("Hi, how are you?")
                                    .font(.body)
                                    .scaleEffect(scalingDownGently ? 1.8 : 1)
                                    .scaleEffect(scalingUpGently ? 0.6 : 1)
                        )
                }
                .rotationEffect(.degrees(rotatingGently ? 0 : -5), anchor: .bottom)
                .offset(y: scalingUpGently ? 0 : -50)
                .scaleEffect(scalingUpGently ? 1.25 : 0, anchor: scalingUpGently ? .bottomTrailing : .bottomLeading)
                .scaleEffect(scalingDownGently ? 0.8 : 1.25, anchor: scalingDownGently ? .bottomTrailing : .bottomLeading)
                .task {
                    withAnimation(.easeInOut(duration: 2).delay(1)) {
                        scalingUpGently.toggle()
                    }
                    
                    withAnimation(.easeOut(duration: 0.5).delay(4)) {
                        scalingDownGently.toggle()
                    }
                    
                   /*withAnimation(.easeInOut(duration: 0.25).repeatCount(8, autoreverses: true)) {
                       rotatingGently.toggle()
                    }*/
                    
                    /*withAnimation(.easeOut(duration: 0.2).repeatCount(12, autoreverses: true)) {
                       rotatingGently.toggle()
                    }*/
                    
                    withAnimation(.timingCurve(0.68, -0.6, 0.32, 1.6).speed(2).repeatCount(10, autoreverses: true)) {
                        rotatingGently.toggle()
                    }
                    
                    
                    
                }
            } else {
                // Fallback on earlier versions
            }
        } // Bubble
        .padding()
    }
}

struct LoudEffect_Previews: PreviewProvider {
    static var previews: some View {
        LoudEffect()
            .preferredColorScheme(.dark)
    }
}
