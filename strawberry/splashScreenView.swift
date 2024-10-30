import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "volleyball")
                    .font(.title)
                Text("loading...")
                    .font(.title)
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeInOut(duration: 1.2)) {
                    self.size = 0.9
                    self.opacity = 1.0
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                self.isActive = true
            }
        }
        .fullScreenCover(isPresented: $isActive) {
            ContentView()
        }
    }
}

