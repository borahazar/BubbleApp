import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            Color.indigo.ignoresSafeArea()
            Text("Settings View")
                .foregroundStyle(.red.gradient)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
