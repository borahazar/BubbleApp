import SwiftUI

@main
struct BubbleApp: App {
    @State private var viewModel = AppViewModel()
    var body: some Scene {
        WindowGroup {
            if viewModel.showingOnboarding {
                OnboardingContainerView(path: $viewModel.path, onComplete: viewModel.completeOnboarding)
            } else {
                MainView()
            }
        }
    }
}
