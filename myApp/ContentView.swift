//
//  ContentView.swift
//  myApp
//
//  Created by 김소현 on 2022/06/11.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        HomeView()
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        // previews : PreviewProvider 프로토콜의 필수 구현 사항
        // previews 타입 프로퍼티에서 뷰 생성
        
        ContentView()
        // 얘도 결국 홈 뷰 생성으로 이어지겠지?
    }
}
#endif
