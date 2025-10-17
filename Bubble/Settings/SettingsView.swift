import SwiftUI

struct SettingsView: View {
    @Bindable var viewModel: BubbleViewModel
    var body: some View {
        ZStack {
            Color.indigo.ignoresSafeArea()
            Text("Settings View")
                .foregroundStyle(.red.gradient)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
