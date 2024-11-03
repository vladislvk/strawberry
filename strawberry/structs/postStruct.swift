import SwiftUI
import Foundation

struct Post: Identifiable {
    let id = UUID()
    let username: String
    let profilePicture: String
    let postImage: String
    let caption: String
    let likes: Int
    let comments: [String]
}
