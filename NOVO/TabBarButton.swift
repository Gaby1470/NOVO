//
//  TabBarButton.swift
//  NOVO
//
//  Created by Gabriela Sanchez on 24/02/24.
//

import SwiftUI

struct TabBarButton: View {
    
    var buttonText: String
    var imageName: String
    var isActive: Bool
    var body: some View {
       
        if isActive {
            Rectangle()
                .foregroundColor(.green)
                .frame(width: 24, height: 4)
                .transition(.opacity)
        }
        Image(systemName: imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 24, height: 24)
        Text(buttonText)
    }
}

#Preview {
    TabBarButton(buttonText: "Home", imageName: "leaf", isActive: true)
}
