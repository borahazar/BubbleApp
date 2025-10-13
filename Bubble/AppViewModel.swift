import SwiftUI
import Observation

@Observable
final class AppViewModel {
    var showingOnboarding: Bool = true
    var path: NavigationPath = NavigationPath()
    
    func completeOnboarding() {
        showingOnboarding = false
    }
}
