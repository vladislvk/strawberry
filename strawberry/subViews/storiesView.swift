import SwiftUI

struct storiesView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack(content: {
                Circle()
                    .frame(width: 90, height: 90)
                Circle()
                    .frame(width: 90, height: 90)
                Circle()
                    .frame(width: 90, height: 90)
                Circle()
                    .frame(width: 90, height: 90)
                Circle()
                    .frame(width: 90, height: 90)
            })
        }.padding(4)
    }
}

#Preview {
    storiesView()
}
