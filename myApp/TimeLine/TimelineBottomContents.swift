//
//  TimelineBottomContents.swift
//  myApp
//
//  Created by 김소현 on 2022/06/29.
//

import SwiftUI

struct TimelineBottomContents: View {
    var body: some View {
        HStack{
            Button(action: {}){
                Image(systemName: "heart")
                    .font(.title)
                    .foregroundColor(.black)
            }
            
            Button(action: {}){
                Image(systemName: "message")
                    .font(.title)
                    .foregroundColor(.black)
            }.padding(.leading, 5)
            
            Button(action: {}){
                Image(systemName: "paperplane")
                    .font(.title)
                    .foregroundColor(.black)
            }.padding(.leading, 5)
            
            Spacer()
            
            Button(action: {}){
                Image(systemName: "bookmark")
                    .font(.title)
                    .foregroundColor(.black)
            }
        }
        .customPadding()
        .padding(.top, 5)
    }
}

struct TimelineBottomContents_Previews: PreviewProvider {
    static var previews: some View {
        TimelineBottomContents()
    }
}
