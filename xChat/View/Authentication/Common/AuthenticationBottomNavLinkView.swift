//
//  AuthenticationBottomNavLinkView.swift
//  xChat
//
//  Created by Ishaan Bhasin on 5/23/24.
//

import SwiftUI

struct AuthenticationBottomNavLinkView<Destination: View>: View {
    var titlePart1: String
    var titlePart2: String
    var destination: Destination

    init(titlePart1: String, titlePart2: String, @ViewBuilder destination: () -> Destination) {
        self.titlePart1 = titlePart1
        self.titlePart2 = titlePart2
        self.destination = destination()
    }

    var body: some View {
        NavigationLink(destination: destination) {
            HStack {
                Text(titlePart1 + " ")
                    .font(.system(size: 14))
                    +
                    Text(titlePart2)
                    .font(.system(size: 14, weight: .semibold))
            }
            .foregroundStyle(.blue)
        }
        .padding(.bottom)
    }
}

#Preview {
    AuthenticationBottomNavLinkView(titlePart1: "Don't have an account?", titlePart2: "Sign Up") {
        Text("Some View")
    }
}
