import SwiftUI

struct OnboardingGetStartedView: View {
    var onComplete: () -> Void
    var body: some View {
        ZStack {
            Image("Onboarding-GetStarted-Image")
                .resizable()
                .ignoresSafeArea()
            OnboardingButton(
                title: "Get Started",
                position: .bottomCenter) {
                    onComplete()
                }
        }
    }
}

