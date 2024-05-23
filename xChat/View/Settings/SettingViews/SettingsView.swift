//
//  SettingsView.swift
//  xChat
//
//  Created by Ishaan Bhasin on 5/23/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack(spacing: 25) {
            NavigationLink {
                EditProfileView()
            } label: {
                SettingsHeaderView()
            }

            VStack(spacing: 0) {
                ForEach(SettingsCellOptions.allCases) { cell in
                    SettingsCellView(cell: cell)
                }
            }

            Button {} label: {
                Text("Log Out")
                    .foregroundStyle(.red)
                    .font(.system(size: 16, weight: .semibold))
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.white)
            }

            Spacer()
        }
        .foregroundStyle(.black)
        .background(
            Color(.systemGroupedBackground))
    }
}

#Preview {
    NavigationStack {
        SettingsView()
            .navigationTitle("Settings")
    }
}
