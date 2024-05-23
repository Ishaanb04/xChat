//
//  CustomTextFieldView.swift
//  xChat
//
//  Created by Ishaan Bhasin on 5/23/24.
//

import SwiftUI

struct CustomTextFieldView: View {
    @Binding var value: String
    var imageName: String
    var titleText: String
    var isSecure: Bool

    init(value: Binding<String>, imageName: String = "envelope", titleText: String = "Email", isSecure: Bool = false) {
        self._value = value
        self.imageName = imageName
        self.titleText = titleText
        self.isSecure = isSecure
    }

    var body: some View {
        VStack(spacing: Constants.Layout.spacingTextFieldVStack) {
            HStack(spacing: Constants.Layout.spacingTextFieldHStack) {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)

                if isSecure {
                    SecureField(titleText, text: $value)
                } else {
                    TextField(titleText, text: $value)
                        .textInputAutocapitalization(.never)
                }
            }
            .frame(height: 25)
            Divider()
                .background(Constants.Colors.textFieldBackground)
        }
        .padding()
    }

    private enum Constants {
        enum Layout {
            static let spacingTextFieldVStack: CGFloat = 16.0
            static let spacingTextFieldHStack: CGFloat = 20.0
        }

        enum Colors {
            static let textFieldBackground = Color(.darkGray)
        }
    }
}

#Preview {
    CustomTextFieldView(value: .constant("e@gmail.com"))
}
