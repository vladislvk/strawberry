import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(content: {
            VStack(content: {
                customTabView()
            })
        })
    }
}

#Preview {
    ContentView()
}
