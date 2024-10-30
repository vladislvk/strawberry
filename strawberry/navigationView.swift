import SwiftUI

struct navigationView: View {
    var body: some View {
        NavigationView(content: {
            NavigationLink(destination: Text("Destination")) { /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/ }
        })
    }
}

#Preview {
    navigationView()
}
