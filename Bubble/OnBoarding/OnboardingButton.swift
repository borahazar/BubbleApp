import SwiftUI

struct OnboardingButton: View {
    let title: String
    let position: ButtonPosition
    let action: () -> Void
    
    var body: some View {
        
    }
}

enum ButtonPosition {
    case bottomRight
    case bottomCenter
}
