//
//  SettingsHeaderView.swift
//  xChat
//
//  Created by Ishaan Bhasin on 5/23/24.
//

import SwiftUI

struct SettingsHeaderView: View {
    var body: some View {
        HStack(spacing: 30) {
            Image(.random)
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .padding(.leading)

            VStack(alignment: .leading, spacing: 4) {
                Text("Ishaan Bhasin")
                    .font(.system(size: 18))
                    .foregroundStyle(.black)
                Text("Availible")
                    .foregroundStyle(.gray)
                    .font(.system(size: 14))
            }
            Spacer()
        }
        .padding(.vertical)
        .frame(height: 80)
        .background(Color.white)
        .padding(.top)
        
    }
}

#Preview {
    SettingsHeaderView()
}
