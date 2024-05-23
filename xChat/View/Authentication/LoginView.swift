//
//  LoginView.swift
//  xChat
//
//  Created by Ishaan Bhasin on 5/23/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationStack {
            VStack {
                AuthenticationHeaderView(titleIntro: "Hello.", titleMain: "Welcome Back")
                textFieldView
                forgetPasswordLink
                AuthenticationMainButtonView(buttonTitle: "Sign in")
                Spacer()
                AuthenticationBottomNavLinkView(titlePart1: "Don't have an account?", titlePart2: "Sign Up") {
                    RegistrationView()
                }
            }
        }
        .dismissKeyboardOnTap()
    }
    
    private var textFieldView: some View {
        VStack {
            CustomTextFieldView(value: $email,
                                imageName: "envelope",
                                titleText: "Email")
            CustomTextFieldView(value: $password,
                                imageName: "lock",
                                titleText: "Password",
                                isSecure: true)
        }
        .padding()
        .foregroundStyle(Constants.Colors.textFieldBackground)
    }
    
    private var forgetPasswordLink: some View {
        NavigationLink {} label: {
            Text("Forgot Password?")
                .font(.callout)
                .fontWeight(.semibold)
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        .padding(.horizontal)
    }
    
    private enum Constants {
        enum Layout {
            static let spacingTextFieldVStack: CGFloat = 16.0
            static let spacingTextFieldHStack: CGFloat = 20.0
        }
        
        enum Colors {
            static let backgroundLight = Color.white
            static let backgroundDark = Color.black
            static let foregroundLight = Color.black
            static let foregroundDark = Color.white
            static let titleForeground = Color.blue
            static let textFieldBackground = Color(.darkGray)
        }
    }
    
    private var bgColor: Color {
        colorScheme == .dark ? Color.black : Color.white
    }
}

#Preview {
    LoginView()
}
