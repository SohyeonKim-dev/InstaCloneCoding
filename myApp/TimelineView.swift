//
//  TimelineView.swift
//  myApp
//
//  Created by 김소현 on 2022/06/11.
//

import SwiftUI

struct TimelineView: View {
    
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
                        LineView(previewArray: [preview, preview, preview])
                    }
                }
            }
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView()
    }
}

struct Preview {
    var id: Int
    let imageUrl: String
    // 정수 아이디와, 문자열 url로 구성된 구조체 프리뷰
}

struct LineView: View {
    let previewArray:[Preview]
    
    var body: some View {
        HStack(spacing: 2){
            PreviewView(preview: previewArray[0])
            PreviewView(preview: previewArray[1])
            PreviewView(preview: previewArray[2])
            // 왜 이렇게 3개로 구성하는가?
        }
    }
}

struct PreviewView: View {
    
    let preview: Preview
    
    var body: some View {
        Image(preview.imageUrl)
        // imageUrl : string 타입이라 바로 넣기 가능하구나
        // 이렇게 구조체로 정의한 다음에, 요소 빼오는 것 좋은 것 같다.
        .resizable()
        .frame(width: 136, height: 136)
    }
}

struct PreviewButton: View {
    let preview: Preview
    
    var body: some View {
        NavigationLink(destination: Text("TEXTO 1")){
            Image("people")
        }
        .frame(width: 120, height: 120)
        .cornerRadius(10)
    }
}
