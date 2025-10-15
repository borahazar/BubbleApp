import SwiftUI

struct MainView: View {
    @State private var isSettingsOpen = false
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color.blue.opacity(0.3)
                    .ignoresSafeArea()
                
                SettingsView()
                    .frame(width: geometry.size.width * 0.7)
                    .offset(x: isSettingsOpen ? 0 : -geometry.size.width * 0.7)
                    .animation(.easeInOut(duration: 0.3), value: isSettingsOpen)
            }
        }
    }
}
