import SwiftUI

struct SettingsView: View {
    @Bindable var viewModel: BubbleViewModel
    var body: some View {
        VStack(spacing: 20){
            
            VStack(alignment: .leading) {
                Text("Bubble Count: \(viewModel.bubbleCount)")
                    .foregroundStyle(.blue)
                Slider(value: $viewModel.bubbleCount, in: 1...100, step: 1)
            }
        }
    }
}
