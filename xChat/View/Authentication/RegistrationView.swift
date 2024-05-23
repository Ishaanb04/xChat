//
//  RegistrationView.swift
//  xChat
//
//  Created by Ishaan Bhasin on 5/23/24.
//

import SwiftUI

struct RegistrationView: View {
    @State var email = ""
    @State var username = ""
    @State var fullName = ""
    @State var password = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            AuthenticationHeaderView(titleIntro: "Get started.", titleMain: "Create your account")
            textFieldView
            AuthenticationMainButtonView(buttonTitle: "Sign Up")
            Spacer()
            dismissButton
        }
        .navigationBarBackButtonHidden()
    }

    private var textFieldView: some View {
        VStack {
            CustomTextFieldView(value: $email, imageName: "envelope", titleText: "Email")
            CustomTextFieldView(value: $username, imageName: "person", titleText: "Username")
            CustomTextFieldView(value: $fullName, imageName: "person.crop.square", titleText: "Full Name")
            CustomTextFieldView(value: $password, imageName: "lock", titleText: "Password")
        }
        .padding()
        .foregroundStyle(Constants.Colors.textFieldBackground)
    }

    private var dismissButton: some View {
        Button {
            dismiss()
        } label: {
            HStack {
                Text("Already have an account?" + " ")
                    .font(.system(size: 14))
                    +
                    Text("Sign In")
                    .font(.system(size: 14, weight: .semibold))
            }
            .foregroundStyle(.blue)
        }
    }

    private enum Constants {
        enum Colors {
            static let textFieldBackground = Color(.darkGray)
        }
    }
}

#Preview {
    RegistrationView()
}
