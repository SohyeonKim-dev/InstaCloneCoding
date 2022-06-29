//
//  CustomPaddingModifier.swift
//  myApp
//
//  Created by 김소현 on 2022/06/29.
//

import SwiftUI

struct CustomPaddingModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.trailing, 10)
            .padding(.leading, 20)
    }
}

extension View {
    func customPadding() -> some View {
        modifier(CustomPaddingModifier())
    }
}

// 패딩 정의할 때, vertical. horizontal 나누어서 정의하면 좋을 것 같다.
// 목적도 같이 정의하면 좋을 것 같다.
// ex) 아이콘 정렬 or 컨텐츠 정렬을 위해서

