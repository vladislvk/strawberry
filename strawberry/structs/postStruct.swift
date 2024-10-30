import SwiftUI

struct postStruct: View {
    let fruit:String
    var body: some View {
        Text(fruit)
            .background(Color.red)
    }
}

#Preview {
    postStruct(fruit:"")
}
