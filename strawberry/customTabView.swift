import SwiftUI

struct customTabView: View {
    var body: some View {
        VStack(content: {
            TabView{
                screenOne()
                    .tabItem {
                        Image(systemName: "homekit")
                        Text("homepage")
                    }
                screenTwo()
                    .tabItem {
                        Image(systemName: "text.justify")
                        Text("homepage")
                    }
                screenThree()
                    .tabItem {
                        Image(systemName: "command")
                        Text("homepage")
                    }
                screenFour()
                    .tabItem {
                        Image(systemName: "person.circle.fill")
                        Text("homepage")
                    }
                    
            }
        })
    }
}

#Preview {
    customTabView()
}
