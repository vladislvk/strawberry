import SwiftUI
import Foundation

struct Story: Identifiable, Hashable {
    let id = UUID()
    let username: String
    let profilePicture: String
}
