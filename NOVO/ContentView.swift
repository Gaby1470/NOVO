//
//  ContentView.swift
//  NOVO
//
//  Created by Gabriela Sanchez on 18/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab: Tabs = .home
    var body: some View {
        VStack {
            Spacer()
            CustomTabBar(selectedTabs: $selectedTab)
        }
    }
}

#Preview {
    ContentView()
}
