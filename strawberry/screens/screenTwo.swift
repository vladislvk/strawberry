import SwiftUI

struct screenTwo: View {
    
    let columns = [
        GridItem(.flexible(),spacing: 0),
        GridItem(.flexible(),spacing: 0),
        GridItem(.flexible(),spacing: 0)
    ]
    
    var body: some View {
        ScrollView {
            searchView()
            LazyVGrid(columns: columns, spacing: 0) {
                ForEach(data) { tile in
                    Image(tile.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                        .overlay(
                            RoundedRectangle(cornerRadius: 0)
                                .stroke(Color.black, lineWidth: 2)
                        )
                      
                }
            }
            .padding(0)
        }
        .navigationTitle("Explore")
    }
}
#Preview {
    screenTwo()
}
