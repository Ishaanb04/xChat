//
//  StatusSelectorViewModel.swift
//  xChat
//
//  Created by Ishaan Bhasin on 5/23/24.
//

import Foundation

class StatusSelectorViewModel: ObservableObject {
    @Published var currentlySelectedStatus: StatusSelectorOptions = .notConfigured

    func updateStatus(to status: StatusSelectorOptions) {
        currentlySelectedStatus = status
    }
}

enum StatusSelectorOptions: Int, CaseIterable, Identifiable {
    case notConfigured
    case availible
    case busy
    case atSchool
    case atTheMovie
    case atWork
    case batteryAboutToDie
    case inAMeeting
    case atTheGym
    case sleeping
    case urgentCallOnly

    var id: Int {
        return rawValue
    }

    var title: String {
        switch self {
        case .availible:
            return "Availible"
        case .busy:
            return "Busy"
        case .atSchool:
            return "At School"
        case .atTheMovie:
            return "At The Movie"
        case .atWork:
            return "At Work"
        case .batteryAboutToDie:
            return "Battery About To Die"
        case .inAMeeting:
            return "In A Meeting"
        case .atTheGym:
            return "At The Gym"
        case .sleeping:
            return "Sleeping"
        case .urgentCallOnly:
            return "Urgent Call Only"
        case .notConfigured:
            return "Please Click to Choose Status"
        }
    }
}
