//
//  ScreenEffectsView.swift
//  iMessageClone
//
//  Created by Amos from getstream.io on 18.12.2021.
//

import SwiftUI

struct  ScreenEffectsView: View {
    let incomingMessaageBubble = Color(#colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1607843137, alpha: 1))
    let accentPrimary = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    @State private var messageEffect = 0

    var body: some View {
        ZStack {
            TabView {
                HStack {
                    Spacer()
                    ZStack {
                        ConfettiEffect()
                        BalloonsEffect()
                        HStack {
                            Spacer()
                            Text("send with baloons and confetti")
                                .font(.caption)
                            .textCase(.uppercase)
                        }
                        .frame(width: 330)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 48, trailing: 48))
                
                HStack {
                    Spacer()
                    ZStack {
                        CelebrationEffect()
                        BalloonsEffect()
                        HStack {
                            Spacer()
                            Text("send with baloons and celebration")
                                .font(.caption)
                            .textCase(.uppercase)
                        }
                        .frame(width: 330)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 48, trailing: 48))
                
                HStack {
                    Spacer()
                    ZStack {
                        EchoEffect()
                        BalloonsEffect()
                        HStack {
                            Spacer()
                            Text("send with baloons and echo")
                                .font(.caption)
                            .textCase(.uppercase)
                        }
                        .frame(width: 330)
                    }
                    
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 48, trailing: 48))
                
                ZStack {
                    HStack {
                        Spacer()
                        ConfettiEffect()
                            .offset(y: 30)
                            .rotationEffect(.degrees(15))
                        ConfettiEffect()
                            .hueRotation(.degrees(120))
                            .offset(y: -5)
                            .rotationEffect(.degrees(-45))
                        ConfettiEffect()
                            .hueRotation(.degrees(45))
                            .offset(y: -15)
                            .rotationEffect(.degrees(30))
                        ZStack {
                            ConfettiEffect()
                            BalloonsEffect()
                        }
                    }
                   
                    
                    HStack {
                        Spacer()
                        Text("send with baloons and confetti")
                            .font(.caption)
                        .textCase(.uppercase)
                    }
                    .frame(width: 330)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 48, trailing: 48))
                }
                
                HStack {
                    Spacer()
                    ZStack {
                        LoveEffect()
                        BalloonsEffect()
                        HStack {
                            Spacer()
                            Text("send with baloons and love")
                                .font(.caption)
                            .textCase(.uppercase)
                        }
                        .frame(width: 330)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 48, trailing: 48))
                
                HStack {
                    Spacer()
                    ZStack {
                        FireworksEffect()
                        ConfettiEffect()
                        HStack {
                            Spacer()
                            Text("send with confetti and fireworks")
                                .font(.caption)
                            .textCase(.uppercase)
                        }
                        .frame(width: 330)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 48, trailing: 48))
                
                HStack {
                    Spacer()
                    ZStack {
                        CelebrationEffect()
                        BalloonsEffect()
                        FireworksEffect()
                        HStack {
                            Spacer()
                            Text("send with baloons, celebration and fireworks")
                                .font(.caption)
                            .textCase(.uppercase)
                        }
                        .frame(width: 330)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 48, trailing: 48))
                
                HStack {
                    Spacer()
                    ZStack {
                        CelebrationEffect()
                        ConfettiEffect()
                        LoveEffect()
                        HStack {
                            Spacer()
                            Text("send with celebration, confetti and love")
                                .font(.caption)
                            .textCase(.uppercase)
                        }
                        .frame(width: 330)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 48, trailing: 48))
                
                HStack {
                    Spacer()
                    ZStack {
                        CelebrationEffect()
                        FireworksEffect()
                        EchoEffect()
                            .padding(.horizontal, 64)
                        HStack {
                            Spacer()
                            Text("send with celebration, echo and fireworks")
                                .font(.caption)
                                .textCase(.uppercase)
                        }
                        .frame(width: 330)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 48, trailing: 48))
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            
            VStack {
                Text("Send with effect")
                    .font(.title2)
                Picker("What is your favorite message effect?", selection: $messageEffect) {
                    Text("Bubble").tag(1)
                    Text("Screen").tag(0)
                }
                .pickerStyle(.segmented)
                
                Spacer()
                
                HStack {
                    Spacer()
                    OutgoingSingleLine()
                }
                
                Spacer()
                
            }
            .padding()
        } // All effects views
        
    }
}

struct  ScreenEffectsView_Previews: PreviewProvider {
    static var previews: some View {
        ScreenEffectsView()
            .preferredColorScheme(.dark)
    }
}
