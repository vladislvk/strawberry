import SwiftUI

struct postView: View {
    let fruit:String
    var body: some View {
        ZStack(content: {
            Rectangle()
                .fill(Color.black)
                .frame(maxWidth: .infinity,minHeight: 400)
            Text(fruit)
                .foregroundStyle(Color.white)
                    
        })
                    
        
    }
}

#Preview {
    postView(fruit:"")
}
