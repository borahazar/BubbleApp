import SwiftUI

struct OnboardingGetStartedView: View {
    @Binding var onComplete: () -> Void
    var body: some View {
        ZStack {
            Image("Onboarding-GetStarted-Image")
        }
    }
}

