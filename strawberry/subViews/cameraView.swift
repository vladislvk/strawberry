import Foundation
import SwiftUI

struct cameraView: View {
    @State private var image: UIImage? = nil
    @State private var showCamera = false
    
    var body: some View {
        VStack {
            if let image = image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding()
            } else {
                Text("No image selected")
                    .foregroundColor(.gray)
                    .padding()
            }
            
            Button(action: {
                showCamera = true
            }) {
                Text("Open Camera")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            .sheet(isPresented: $showCamera) {
                ImagePicker(image: $image)
            }
        }
    }
}

#Preview {
    cameraView()
}
