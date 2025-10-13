import SwiftUI

enum ButtonPosition {
    case bottomRight
    case bottomCenter
}

struct OnboardingButton: View {
    let title: String
    let position: ButtonPosition
    let action: () -> Void
    
    @State private var isPressed = false
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .padding(.horizontal, 24)
                .padding(.vertical, 16)
                .background {
                    RoundedRectangle(cornerRadius: 16)
                        .fill(.ultraThinMaterial)
                        .overlay {
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.white.opacity(0.3), lineWidth: 1)
                        }
                        .shadow(color: .white.opacity(0.1), radius: 10, y: 5)
                }
        }
        .scaleEffect(isPressed ? 0.95 : 1.0)
        .animation(.spring(response: 0.3, dampingFraction: 0.6), value: isPressed)
        .sensoryFeedback(.impact(flexibility: .soft), trigger: isPressed)
        .simultaneousGesture(
            DragGesture(minimumDistance: 0)
                .onChanged { _ in isPressed = true }
                .onEnded { _ in isPressed = false }
        )
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: alignment)
        .padding(.horizontal, position == .bottomRight ? 24 : 0)
        .padding(.bottom, 40)
    }
    private var alignment: Alignment {
        switch position {
        case .bottomRight:
            return .bottomTrailing
        case .bottomCenter:
            return .bottom
        }
    }
}
