//
//  StartTabView.swift
//  Observation Framework
//
//  Created by Marcin Jędrzejak on 22/08/2023.
//

import SwiftUI

struct StartTabView: View {
    @Environment(AppState.self) var appState
    var body: some View {
        @Bindable var appState = appState
        NavigationStack {
            TabView {
                ContentView()
                    .tabItem {
                        Image(systemName: "1.circle.fill")
                        Text("Screen 1")
                    }
                WithChildrenView()
                    .tabItem {
                        Image(systemName: "2.circle.fill")
                        Text("Screen 2")
                    }
            }
            .navigationTitle("")
            .toolbar {
                Toggle(appState.isLoggedIn ? "Log Out" : "Log In", isOn: $appState.isLoggedIn)
            }
        }
    }
}

#Preview {
    StartTabView()
        .environment(AppState())
}
