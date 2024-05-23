//
//  StatusSelectorHeaderView.swift
//  xChat
//
//  Created by Ishaan Bhasin on 5/23/24.
//

import SwiftUI

struct StatusSelectorHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Currently set to".uppercased())
                .foregroundStyle(.gray)
                .padding()

            Text(StatusSelectorOptions.atSchool.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.white)
        }
    }
}

#Preview {
    StatusSelectorHeaderView()
}
