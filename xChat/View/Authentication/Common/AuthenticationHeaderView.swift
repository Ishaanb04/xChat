//
//  AuthenticationHeaderView.swift
//  xChat
//
//  Created by Ishaan Bhasin on 5/23/24.
//

import SwiftUI

struct AuthenticationHeaderView: View {
    var titleIntro: String
    var titleMain: String
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text(titleIntro)
                    .foregroundStyle(colorScheme == .dark ? Constants.Colors.foregroundDark : Constants.Colors.foregroundLight)
                Text(titleMain)
                    .foregroundStyle(Constants.Colors.titleForeground)
            }
            .font(.largeTitle)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .padding(.top)
        }
    }

    private enum Constants {
        enum Colors {
            static let foregroundLight = Color.black
            static let foregroundDark = Color.white
            static let titleForeground = Color.blue
        }
    }
}

#Preview {
    AuthenticationHeaderView(titleIntro: "Hello.", titleMain: "Welcome Back")
}
