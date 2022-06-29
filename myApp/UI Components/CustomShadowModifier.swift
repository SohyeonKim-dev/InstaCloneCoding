//
//  CustomShadowModifier.swift
//  myApp
//
//  Created by 김소현 on 2022/06/29.
//

import SwiftUI

struct CustomShadowModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: .black.opacity(0.04), radius: 6, x: 0, y: 2)
            .shadow(color: .black.opacity(0.04), radius: 2, x: 0, y: 1)
            .shadow(color: .black.opacity(0.18), radius: 2, x: 0, y: 1)
    }
}

extension View {
    func customShadow() -> some View {
        modifier(CustomShadowModifier())
    }
}
