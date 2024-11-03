import SwiftUI

struct storiesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(fakeStories) { story in
                    VStack {
                        Image(story.profilePicture)
                            .resizable()
                            .frame(width: 90, height: 90)
                            .clipShape(Circle())
                        Text(story.username)
                            .font(.caption)
                    }
                    .padding(.horizontal, 4)
                }
            }
        }
        .padding(4)
    }
}

#Preview {
    storiesView()
}
