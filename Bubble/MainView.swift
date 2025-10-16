import SwiftUI

struct MainView: View {
    @State private var isSettingsOpen = false
    @State private var dragOffset: CGFloat = 0
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
                Rectangle()
                    .fill(Color.white.opacity(0.001))
                    .frame(width: geometry.size.width * 0.1, height: geometry.size.height)
                    .gesture(
                        DragGesture(minimumDistance: 20)
                            .onChanged { value in
                                print("Dragging: \(value.translation.width)")
                                dragOffset = value.translation.width
                                
                            }
                            .onEnded { value in
                                if dragOffset >= geometry.size.width * 7/20 {
                                    isSettingsOpen = true
                                } else {
                                    isSettingsOpen = false
                                }
                                dragOffset = 0
                            }
                    )
                    
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
                    .offset(x: min((isSettingsOpen ? 0 : -geometry.size.width * 0.7 + dragOffset), 0))
                    .animation(.easeInOut(duration: 0.4), value: isSettingsOpen)
                    .animation(.easeInOut(duration: 0.4), value: dragOffset)
            }
        }
    }
}
