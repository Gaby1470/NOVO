import SwiftUI

enum Tabs: Int {
    case home = 0, profile = 1
}

struct CustomTabBar: View {
    @Binding var selectedTabs: Tabs
    
    var body: some View {
        HStack {
            // Home Button
            Button(action: {
                withAnimation {
                    selectedTabs = .home
                }
            }) {
                VStack {
                    TabBarButton(buttonText: "Home", imageName: "leaf", isActive: selectedTabs == .home)
                }
            }
            .frame(maxWidth: .infinity)

            Button(action: {
            }) {
                ZStack{
                    Circle()
                        .stroke(.gray, lineWidth: 2)
                        .background(Circle().fill(Color.gray.opacity(0.5)))
                        .frame(width: 60, height: 60)
                    Image(systemName: "camera")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                }
            }
            .frame(width: 60)
            Button(action: {
                            withAnimation {
                                selectedTabs = .profile
                            }
                        }) {
                            VStack {
                                TabBarButton(buttonText: "Profile", imageName: "person", isActive: selectedTabs == .profile)
                            }
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .frame(height: 82)
                }
            }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
