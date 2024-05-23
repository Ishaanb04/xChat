//
//  SettingsCellViewModel.swift
//  xChat
//
//  Created by Ishaan Bhasin on 5/23/24.
//

import SwiftUI

enum SettingsCellViewModel: Int, CaseIterable, Identifiable {
    case account
    case notification
    case starredMessages

    var id: Int {
        return self.rawValue
    }
    
    var title: String {
        switch self {
        case .account:
            return "Account"
        case .notification:
            return "Notification"
        case .starredMessages:
            return "Starred Messages"
        }
    }

    var imageName: String {
        switch self {
        case .account:
            return "key.fill"
        case .notification:
            return "bell.badge.fill"
        case .starredMessages:
            return "star.fill"
        }
    }

    var backgroundColor: Color {
        switch self {
        case .account:
            return .blue
        case .notification:
            return .red
        case .starredMessages:
            return .yellow
        }
    }
}
