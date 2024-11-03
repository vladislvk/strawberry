import SwiftUI

struct headerView: View {
    var body: some View {
        HStack(content: {
            Text("Instagram")
                .font(.title)
            Spacer()
            Image(systemName: "heart")
                .font(.title)
                .padding(.horizontal)
            Image(systemName: "message")
                .font(.title)
            
        }).padding(.horizontal)
    }
}

#Preview {
    headerView()
}
