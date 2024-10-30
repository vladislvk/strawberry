import SwiftUI

struct screenFour: View {
    var body: some View {
        VStack(content: {
            HStack(content: {
                Circle()
                    .frame(width: 100,height: 100)
                    .padding(25)
                    
                Spacer()

            })
            Spacer()
        })
    }
}

#Preview {
    screenFour()
}
