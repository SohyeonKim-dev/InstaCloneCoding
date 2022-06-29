//
//  MessageView.swift
//  myApp
//
//  Created by 김소현 on 2022/06/29.
//

import SwiftUI

struct MessageView: View {
    
        var body: some View {
            VStack{
                Text("여기다가 사람들 메세지 구조체로 띄우기 (사진처럼)")
            }
            .navigationTitle("다이렉트 메세지")
        }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
