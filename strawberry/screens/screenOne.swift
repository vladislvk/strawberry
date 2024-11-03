import SwiftUI

struct screenOne: View {
    var body: some View {
        VStack {
            headerView()
            
            ScrollView(.vertical, showsIndicators: false) {
                storiesView()
                ForEach(randomData) { post in
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
                        
                        ForEach(post.comments.prefix(2), id: \.self) { comment in
                            Text(comment)
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        
                        Divider()
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    screenOne()
}
