import SwiftUI

struct OnboardingInfoView: View {
    @Binding var path: NavigationPath
    var body: some View {
        ZStack {
            Image("Onboarding-Info-Image")
                .resizable()
                .ignoresSafeArea()
            OnboardingButton(
                title: "Next",
                position: .bottomRight
            ) {
                path.append(OnboardingStep.getStarted)
            }

        }
        
    }
}
