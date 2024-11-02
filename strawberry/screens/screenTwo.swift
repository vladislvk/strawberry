import SwiftUI

struct screenTwo: View {
    let data = (1...100).map {"Item\($0)"}
    let columns = [
        GridItem(.adaptive(minimum: 80))
    ]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns,spacing: 20, content: {
                ForEach(data, id:\.self){ Item in
                    Text(Item)
                }
            })
        }
    }
}

#Preview {
    screenTwo()
}
