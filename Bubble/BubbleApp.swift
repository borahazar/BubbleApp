import SwiftUI

@main
struct BubbleApp: App {
    @State private var viewModel = AppViewModel()
    var body: some Scene {
        WindowGroup {
            if viewModel.showingOnboarding {
                Text("Hello")
            } else {
                Text("Main App")
            }
        }
    }
}
