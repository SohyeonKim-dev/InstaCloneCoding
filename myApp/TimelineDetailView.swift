//
//  TimelineDetailView.swift
//  myApp
//
//  Created by 김소현 on 2022/06/11.
//

import SwiftUI

struct TimelineDetailView: View {
    
    let previews:[Preview] = [
        Preview(id: 0, imageUrl: "1"),
        Preview(id: 1, imageUrl: "2"),
        Preview(id: 2, imageUrl: "3"),
        Preview(id: 3, imageUrl: "4"),
        Preview(id: 4, imageUrl: "5"),
        Preview(id: 5, imageUrl: "6"),
        Preview(id: 6, imageUrl: "7"),
        Preview(id: 7, imageUrl: "8"),
        Preview(id: 8, imageUrl: "9"),
        Preview(id: 9, imageUrl: "10"),
        Preview(id: 10, imageUrl: "11"),
        Preview(id: 11, imageUrl: "12"),
        Preview(id: 12, imageUrl: "13")
    ]
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 2){
                ForEach(previews, id: \.id) { preview in
                    PreviewDetailView(preview: preview).padding(.bottom, 20)
                }
            }
        }
    }
}

struct TimelineDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineDetailView()
    }
}

struct PreviewDetailView: View {
    
    let preview: Preview
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image("people")
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .shadow(radius: 3)
                .overlay(Circle().stroke(Color.pink, lineWidth: 1))
                .padding(.top, 3)
                .padding(.leading, 5)
                
                VStack(alignment: .leading){
                    Text("Colli").font(.headline).foregroundColor(.blue)
                    Text("나는야 싱싱한 야생의 브로콜리 🥦").foregroundColor(Color(.lightGray)).font(.subheadline)
                }
                
                Spacer()
                
                Button(action: {}){
                    Image(systemName : "list.bullet.circle")
                        .font(.title)
                        .foregroundColor(.black)
                }
                .padding(.trailing, 5)
            }
            
            Image(preview.imageUrl)
            .resizable()
            .frame(width: 415, height: 415)
            
            HStack{
                Button(action: {}){
                    Image(systemName: "heart")
                        .font(.title)
                        .foregroundColor(.black)
                }.padding(.leading, 10)
                
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
                }.padding(.trailing, 30)
            }
            
            VStack(alignment: .leading){
                Text("인스타 갬성 문구 ... ").foregroundColor(.blue)
                Text("See all comments").foregroundColor(Color(.lightGray)).font(.subheadline)
            }.padding(.leading, 5)
            
        }
    }
}

