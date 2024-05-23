//
//  StatusSelectorCell.swift
//  xChat
//
//  Created by Ishaan Bhasin on 5/23/24.
//

import SwiftUI

struct StatusSelectorCell: View {
    var statusSelectorOption: StatusSelectorOptions
    var body: some View {
        VStack(spacing: 0) {
            Text(statusSelectorOption.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.white)
            Divider()
                .background(.gray)
        }
    }
}

#Preview {
    StatusSelectorCell(statusSelectorOption: .availible)
}
