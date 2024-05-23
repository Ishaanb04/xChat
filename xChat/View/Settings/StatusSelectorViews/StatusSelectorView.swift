//
//  StatusSelectorView.swift
//  xChat
//
//  Created by Ishaan Bhasin on 5/23/24.
//

import SwiftUI

struct StatusSelectorView: View {
    @ObservedObject var statusViewModel: StatusSelectorViewModel
    var body: some View {
        ZStack {
            Color(.secondarySystemBackground)
                .ignoresSafeArea()

            ScrollView {
                VStack {
                    VStack(alignment: .leading) {
                        Text("Currently set to".uppercased())
                            .foregroundStyle(.gray)
                            .padding()
                        StatusSelectorCell(statusSelectorOption: statusViewModel.currentlySelectedStatus)
                    }
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Select your status".uppercased())
                            .foregroundStyle(.gray)
                            .padding()

                        ForEach(StatusSelectorOptions.allCases.filter { $0 != .notConfigured }) { option in
                            StatusSelectorCell(statusSelectorOption: option)
                                .onTapGesture {
                                    statusViewModel.updateStatus(to: option)
                                }
                        }
                    }

                    Spacer()
                }
                .foregroundStyle(.black)
            }
        }
    }
}

#Preview {
    StatusSelectorView(statusViewModel: StatusSelectorViewModel())
}
