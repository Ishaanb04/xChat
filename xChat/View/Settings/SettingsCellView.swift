//
//  SettingsCellView.swift
//  xChat
//
//  Created by Ishaan Bhasin on 5/23/24.
//

import SwiftUI

struct SettingsCellView: View {
    var cell: SettingsCellViewModel

    var body: some View {
        VStack {
            HStack {
                Image(systemName: cell.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22, height: 22)
                    .padding(6)
                    .background(cell.backgroundColor)
                    .foregroundStyle(.white)
                    .cornerRadius(10)

                Text(cell.title)
                    .font(.system(size: 15))

                Spacer()

                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
            }
            .padding([.horizontal, .top])
            Divider()
                .padding(.leading)
        }
        .background(Color.white)
    }
}

#Preview {
    SettingsCellView(cell: .notification)
}
