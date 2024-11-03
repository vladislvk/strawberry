import SwiftUI

struct screenOne: View {
    @State private var currentIndex = 0
    @State private var postsToShow: [Post] = []
    private let loadCount = 3
    
    var body: some View {
        VStack {
            headerView()
            
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack {
                    storiesView()
                    
                    ForEach(postsToShow) { post in
                        VStack(alignment: .leading) {
                            HStack {
                                Image(post.profilePicture)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                
                                Text(post.username)
                                    .font(.headline)
                            }
                            .padding(.vertical, 5)
                            
                            Image(post.postImage)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: .infinity)
                            
                            Text("❤️ \(post.likes) likes")
                                .font(.subheadline)
                                .padding(.top, 5)
                            
                            Text(post.caption)
                                .padding(.top, 2)
                            
                            Divider()
                        }
                        .padding(.horizontal)
                    }
                    
                    if currentIndex < randomData.count {
                        ProgressView()
                            .onAppear {
                                loadMorePosts()
                            }
                    }
                }
            }
        }
        .onAppear {
            loadMorePosts()
        }
    }
    
    private func loadMorePosts() {
        let newPosts = Array(randomData[currentIndex..<min(currentIndex + loadCount, randomData.count)])
        postsToShow.append(contentsOf: newPosts)
        
        currentIndex += loadCount
        
        if currentIndex >= randomData.count {
            currentIndex = randomData.count
        }
    }
}

#Preview {
    screenOne()
}
