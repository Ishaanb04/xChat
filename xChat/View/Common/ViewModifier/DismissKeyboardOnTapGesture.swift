//
//  DismissKeyboardOnTapGesture.swift
//  xChat
//
//  Created by Ishaan Bhasin on 5/23/24.
//

import SwiftUI

struct DismissKeyboardOnTapGesture: ViewModifier {
    func body(content: Content) -> some View {
        content
            .onTapGesture {
                self.dismissKeyBoard()
            }
    }
    
    private func dismissKeyBoard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

extension View {
    func dismissKeyboardOnTap() -> some View {
        self.modifier(DismissKeyboardOnTapGesture())
    }
}
