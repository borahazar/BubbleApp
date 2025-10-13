import SwiftUI

struct OnboardingWelcomeView: View {
    @Binding var path: NavigationPath
    var body: some View {
        ZStack {
            Image("Onboarding-Welcome-Image")
                .resizable()
                .ignoresSafeArea()
            OnboardingButton(
                title: "Next",
                position: .bottomRight
            ) {
                path.append(OnboardingStep.info)
            }
        }
    }
}
