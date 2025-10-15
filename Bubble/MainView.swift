import SwiftUI

struct MainView: View {
    @State private var isSettingsOpen = false
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading){
                Color.blue.opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        if isSettingsOpen {
                            isSettingsOpen = false
                        }
                    }
                
                VStack {
                    HStack {
                        Button {
                            isSettingsOpen = true
                        } label: {
                            Image(systemName: "gearshape.fill")
                                .font(.title)
                                .foregroundStyle(.white)
                                .padding()
                        }
                        Spacer()
                    }
                    Spacer()
                }
                
                SettingsView()
                    .frame(width: geometry.size.width * 0.7)
                    .offset(x: isSettingsOpen ? 0 : -geometry.size.width * 0.7)
                    .animation(.easeInOut(duration: 0.4), value: isSettingsOpen)
            }
        }
    }
}
