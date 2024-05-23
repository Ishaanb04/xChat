//
//  MainTabView.swift
//  xChat
//
//  Created by Ishaan Bhasin on 5/23/24.
//

import SwiftUI

struct MainTabView: View {
    @State var selectedIndex = 0
    var body: some View {
        NavigationStack {
            TabView {
                ChatView()
                    .onAppear { selectedIndex = 0 }
                    .tabItem { Image(systemName: "bubble.left") }
                    .tag(0)
                ChannelsView()
                    .onAppear { selectedIndex = 1 }
                    .tabItem { Image(systemName: "bubble.left.and.bubble.right") }
                    .tag(1)
                SettingsView()
                    .onAppear { selectedIndex = 2 }
                    .tabItem { Image(systemName: "gear") }
                    .tag(1)
            }
            .navigationTitle(navTitle)
        }
    }

    private var navTitle: String {
        switch selectedIndex {
        case 0: return "Chats"
        case 1: return "Channels"
        case 2: return "Settings"
        default: return "No Title"
        }
    }
}

#Preview {
    MainTabView()
}
