//
//  AuthenticationMainButtonView.swift
//  xChat
//
//  Created by Ishaan Bhasin on 5/23/24.
//

import SwiftUI

struct AuthenticationMainButtonView: View {
    var buttonTitle: String
    var body: some View {
        Button {
            print("Debug: Sign in button pressed")
        } label: {
            Text(buttonTitle)
                .frame(maxWidth: .infinity)
                .padding()
                .background(.blue)
                .clipShape(Capsule())
                .padding()
                .foregroundStyle(.white)
                .shadow(color: .black, radius: 4)
        }
    }
}

#Preview {
    AuthenticationMainButtonView(buttonTitle: "Sign in")
}
