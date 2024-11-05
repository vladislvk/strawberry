import SwiftUI

struct searchView: View {
    @State private var searchText = ""

    var body: some View {
        TextField("hola", text: $searchText) 
            .padding()
            .background(Color(.systemGray5))
            .cornerRadius(8)
            .padding(.horizontal)
    }
}

#Preview {
    searchView()
}
