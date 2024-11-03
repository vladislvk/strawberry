import SwiftUI

struct headerView: View {
    var body: some View {
        HStack(content: {
            Text("zxc")
                .font(.title)
            Spacer()
            Image(systemName: "message")
                .font(.title)
        }).padding(.horizontal)
    }
}

#Preview {
    headerView()
}
