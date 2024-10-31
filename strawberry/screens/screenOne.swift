import SwiftUI

struct screenOne: View {
    var body: some View {
        VStack(content: {
            headerView()
            ScrollView(.vertical,showsIndicators: false) {
                storiesView()
                ForEach(randomData, id:\.self) { fruit in
                    VStack(content: {
                        postView(fruit:fruit)
                    })
                }
            }
        })
    }
}

#Preview {
    screenOne()
}
