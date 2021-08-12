//
//  WelcomeView.swift
//  LovelyUI
//
//  Created by Debora Moura on 29/06/20.
//  Copyright © 2020 Debora Moura. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, alignment: .center)
                
                Spacer()
                
                Text("Welcome to Montaro UI Kit")
                    .font(Font.system(size: 30, weight: .semibold))
                    .foregroundColor(Color.black)
                    .frame(width: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                            
                Text("The best UI Kit for your next health and fitness project!")
                    .font(Font.system(size: 17, weight: .regular))
                    .frame(width: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Image("movement")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 385, alignment: .center)
                    .clipped()
                
                Spacer()
                
                Button(action: {
                    print("get started button")
                }) {
                    Text("Get Started")
                        .fontWeight(.bold)
                        .padding(.vertical, 15)
                        .padding(.horizontal, 70)
                        .background(Color.accentColor)
                        .cornerRadius(15)
                        .foregroundColor(Color.white)
                }
                
                Spacer()
                
                HStack {
                    Text("Already have account?")
                        .font(Font.system(size: 17, weight: .regular))
                        .foregroundColor(Color.darkGray)

                    Button(action: {
                        print("sign inbutton")
                    }) {
                        Text("Sign in")
                            .font(Font.system(size: 17, weight: .bold))
                            .foregroundColor(Color.accentColor)
                    }
                }
                .frame(width: 300, alignment: .center)
            }
            .padding(.top, 70)
            .padding(.bottom, 70)
        }
        .background(Color.base)
        .edgesIgnoringSafeArea(.all)
    }
}
