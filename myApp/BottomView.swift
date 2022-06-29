//
//  BottomView.swift
//  myApp
//
//  Created by 김소현 on 2022/06/11.
//

import SwiftUI

struct BottomView: View {
    var body: some View {
        HStack{
             Button(action: {}){
                 Image(systemName: "house.circle")
                     .font(.title)
                     .foregroundColor(.black)
             }.padding()
             
             Button(action: {}){
                 Image(systemName: "magnifyingglass.circle")
                     .font(.title)
                     .foregroundColor(.black)
             }.padding()
             
             Button(action: {}){
                 Image(systemName: "plus.circle")
                     .font(.title)
                     .foregroundColor(.black)
             }.padding()
             
             Button(action: {}){
                 Image(systemName: "heart.circle")
                     .font(.title)
                     .foregroundColor(.black)
             }.padding()
             
             Button(action: {}){
                 Image(systemName: "person.circle")
                     .font(.title)
                     .foregroundColor(.black)
             }.padding()
        }.frame(height: 35)
    }
}

struct BottomView_Previews: PreviewProvider {
    static var previews: some View {
        BottomView()
    }
}
