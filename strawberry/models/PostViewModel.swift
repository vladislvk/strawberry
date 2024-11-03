import SwiftUI
import Combine

class PostViewModel: ObservableObject {
    @Published var posts: [Post] = []
    
    func fetchPosts() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.posts = randomData
        }
    }
}
