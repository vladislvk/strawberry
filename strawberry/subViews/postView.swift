import SwiftUI

struct postView: View {
    let fruit:String
    var body: some View {
        ZStack(content: {
            Rectangle()
                .fill(Color.blue)
                .frame(maxWidth: .infinity,minHeight: 400)
            Text(fruit)
                    
        })
                    
        
    }
}

#Preview {
    postView(fruit:"")
}
