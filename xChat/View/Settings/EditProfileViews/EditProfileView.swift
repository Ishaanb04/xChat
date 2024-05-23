//
//  EditProfileView.swift
//  xChat
//
//  Created by Ishaan Bhasin on 5/23/24.
//

import SwiftUI

struct EditProfileView: View {
    @State var fullName = "Ishaan"
    var body: some View {
        ZStack {
            Color(.secondarySystemBackground)
                .ignoresSafeArea()
            VStack {
                // header
                EditProfileHeaderView(fullName: $fullName)

                // status

                EditProfileStatusView()

                Spacer()
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Edit Profile")
        }
        .dismissKeyboardOnTap()
    }
}

#Preview {
    NavigationStack {
        EditProfileView()
    }
}
