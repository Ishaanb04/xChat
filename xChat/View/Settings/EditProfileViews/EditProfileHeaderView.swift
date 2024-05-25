//
//  EditProfileHeaderView.swift
//  xChat
//
//  Created by Ishaan Bhasin on 5/23/24.
//

import SwiftUI

struct EditProfileHeaderView: View {
    @Binding var fullName: String
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack {
                    if let profileImage {
                        profileImage
                            .resizable()
                            .scaledToFill()
                            .frame(width: 64, height: 64)
                            .clipShape(Circle())
                    } else {
                        Image(.random)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 64, height: 64)
                            .clipShape(Circle())
                    }

                    Button {
                        showImagePicker.toggle()
                    } label: {
                        Text("Edit")
                            .foregroundStyle(.blue)
                    }
                    .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
                        ImagePicker(image: $selectedImage)
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

    func loadImage() {
        guard let selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)
    }
}

#Preview {
    EditProfileHeaderView(fullName: .constant("Ishaan Bhasin"))
}
