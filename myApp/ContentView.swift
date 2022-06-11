//
//  ContentView.swift
//  myApp
//
//  Created by 김소현 on 2022/06/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack{
                HStack{
                    Button(action: {}){
                        Image("camera")
                        .resizable()
                        .frame(width: 30, height: 30)
                    }.padding()

                    Text("Clonegram")
                        .font(.title)
                        .fontWeight(.semibold)
                        .fontWeight(.light)
                        .foregroundColor(.indigo)
                        .multilineTextAlignment(.leading)
                        .frame(width: 150, height: 40)

                    Spacer()

                    Button(action: {}){
                        Image("home")
                        .resizable()
                        .frame(width: 30, height: 30)
                    }

                    Button(action: {}){
                        Image("paper-plane")
                        .resizable()
                        .frame(width: 30, height: 30)
                    }.padding()

                }.frame(height: 50)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        PreviewViewTop()
                        PreviewViewTop()
                        PreviewViewTop()
                        PreviewViewTop()
                        PreviewViewTop()
                        PreviewViewTop()
                    }
                }.frame(height: 70)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PreviewViewTop: View {
    var body: some View {
        ZStack(alignment: .bottom){
            HStack{
                VStack {
                    Image("night")
                    .resizable()
                    .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        .shadow(radius: 3)
                        .overlay(Circle().stroke(Color.pink, lineWidth: 2.2))
                    
                    Text("Your Stories")
                        .font(.caption)
                }
            }
        }
    }
}
