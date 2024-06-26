//
//  EditProfileStatusView.swift
//  xChat
//
//  Created by Ishaan Bhasin on 5/23/24.
//

import SwiftUI

struct EditProfileStatusView: View {
    var body: some View {
        VStack(alignment: .leading) {
            // Status Text
            Text("Status")
                .padding([.top, .horizontal])
                .foregroundColor(.gray)
            // Actual Status
            NavigationLink {
                StatusSelectorView(statusViewModel: StatusSelectorViewModel())
            } label: {
                HStack {
                    Text(StatusSelectorOptions.atSchool.title)
                        .foregroundStyle(.blue)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundStyle(.gray)
                }
                .padding()
                .background(.white)
            }
        }
    }
}

#Preview {
    EditProfileStatusView()
}
