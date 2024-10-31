import SwiftUI

struct headerView: View {
    var body: some View {
        HStack(content: {
            Text("Strawberry")
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
