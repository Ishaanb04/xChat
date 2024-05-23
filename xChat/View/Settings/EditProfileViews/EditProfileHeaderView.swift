//
//  EditProfileHeaderView.swift
//  xChat
//
//  Created by Ishaan Bhasin on 5/23/24.
//

import SwiftUI

struct EditProfileHeaderView: View {
    @Binding var fullName: String
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack {
                    Image(.random)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())

                    Button {
                        print("Debug: Edit Image pressed")
                    } label: {
                        Text("Edit")
                            .foregroundStyle(.blue)
                    }
                }

                Text("Enter your name or change your profile photo")
                    .font(.system(size: 16))
                    .foregroundStyle(.gray)
                    .padding([.bottom, .horizontal])
            }
            .padding(.horizontal)

            Divider()
                .padding(.horizontal)
            TextField("", text: $fullName)
                .padding()
                .foregroundStyle(.black)
        }
        .padding(.top)
        .background(.white)
        .padding(.top)
    }
}

#Preview {
    EditProfileHeaderView(fullName: .constant("Ishaan Bhasin"))
}
