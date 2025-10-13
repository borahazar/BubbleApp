import SwiftUI

struct OnboardingContainerView: View {
    @Binding var path: NavigationPath
    var onComplete: () -> Void
    
    var body: some View {
        NavigationStack(path: $path) {
            OnboardingWelcomeView(path: $path)
            
            .navigationDestination(for: OnboardingStep.self) { step in
                switch step {
                case .welcome:
                    OnboardingWelcomeView(path: $path)
                case .info:
                    OnboardingInfoView(path: $path)
                case .getStarted:
                    OnboardingGetStartedView(onComplete: onComplete)
                }
                
            }
            
        }
    }
    
}
