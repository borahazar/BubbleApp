import SwiftUI
import Observation

@Observable
final class AppViewModel {
    var showingOnboarding: Bool = false
    var path: NavigationPath = NavigationPath()
    
    func completeOnboarding() {
        showingOnboarding = false
    }
}
