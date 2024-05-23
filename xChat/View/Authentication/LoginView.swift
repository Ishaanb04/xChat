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
        ZStack {
            NavigationStack {
                VStack {
                    VStack {
                        VStack(alignment: .leading) {
                            Text(Constants.Text.title1)
                                .foregroundStyle(colorScheme == .dark ? Constants.Colors.foregroundDark : Constants.Colors.foregroundLight)
                            Text(Constants.Text.title2)
                                .foregroundStyle(Constants.Colors.titleForeground)
                        }
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .padding(.top)
                    }
                    
                    VStack {
                        CustomTextFieldView(value: $email, imageName: "envelope", titleText: "Email")
                        CustomTextFieldView(value: $password, imageName: "lock", titleText: "Password", isSecure: true)
                    }
                    .padding()
                    .foregroundStyle(Constants.Colors.textFieldBackground)
                    
                    NavigationLink {} label: {
                        Text("Forgot Password?")
                            .font(.callout)
                            .fontWeight(.semibold)
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.horizontal)
                    
                    Button {
                        print("Debug: Sign in button pressed")
                    } label: {
                        Text("Sign in")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(.blue)
                            .clipShape(Capsule())
                            .padding()
                            .foregroundStyle(.white)
                            .shadow(color: .black, radius: 4)
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: {}) {
                        HStack {
                            Text("Don't have an account? ")
                                .font(.system(size: 14)) +
                                Text("Sign Up")
                                .font(.system(size: 14, weight: .semibold))
                        }
                        .foregroundStyle(.blue)
                    }
                }
                .dismissKeyboardOnTap()
            }
        }
        .dismissKeyboardOnTap()
    }
    
    private enum Constants {
        enum Text {
            static let title1 = "Hello."
            static let title2 = "Welcome Back"
        }
        
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
