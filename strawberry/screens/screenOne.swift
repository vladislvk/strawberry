import SwiftUI

struct screenOne: View {
    var body: some View {
        VStack(content: {
            ScrollView(.vertical,showsIndicators: false) {
                headerView()
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
