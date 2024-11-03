import SwiftUI

struct customTabView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                // Main screen content
                Spacer()
            }
            .ignoresSafeArea()

            TabView {
                screenOne()
                    .tabItem {
                        Image(systemName: "house.fill")
                            .font(.system(size: 20))
                        Text("Home")
                            .font(.system(size: 10))
                    }
                screenTwo()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 20))
                        Text("Search")
                            .font(.system(size: 10))
                    }
                cameraView()
                    .tabItem {
                        Image(systemName: "plus.app.fill")
                            .font(.system(size: 20))
                        Text("New")
                            .font(.system(size: 10))
                    }
                screenThree()
                    .tabItem {
                        Image(systemName: "play.rectangle.fill")
                            .font(.system(size: 20))
                        Text("Videos")
                            .font(.system(size: 10))
                    }
                screenFour()
                    .tabItem {
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 20))
                        Text("Profile")
                            .font(.system(size: 10))
                    }
            }
            .padding(.bottom, -10) // Move TabView downwards by 10 points
        }
    }
}

#Preview {
    customTabView()
}
