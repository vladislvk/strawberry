import SwiftUI

struct screenOne: View {
    
    let randomData = ["apple","strawberries","bananas","pineapples","watermelon","grapefruit"]
    var body: some View {
        VStack(content: {
            ForEach(randomData, id:\.self) { fruit in
                VStack(content: {
                    postStruct(fruit:fruit)
                })
            }
        })
    }
}

#Preview {
    screenOne()
}
