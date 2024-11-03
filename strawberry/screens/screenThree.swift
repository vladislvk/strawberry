import SwiftUI

struct screenThree: View {
    
    let items = Array(1...10)
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(spacing: 0, content: {
                ForEach(items,id:\.self){index in
                    
                }
            })
        }
    }
}

#Preview {
    screenThree()
}
