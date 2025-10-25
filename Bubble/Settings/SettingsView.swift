import SwiftUI

struct SettingsView: View {
    @Bindable var viewModel: BubbleViewModel
    var body: some View {
        ZStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 2)
                .fill(Color.purple.tertiary)
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading, spacing: 40){
                    // Bubble Count Slider *****
                    GroupBox {
                        Text("Bubble Count: \(Int(viewModel.bubbleCount))")
                            .bold()
                            .font(.title)
                        Slider(value: $viewModel.bubbleCount, in: 1...100, step: 1)
                            .tint(.black)
                        
                        HStack {
                            Text("1")
                                .font(.default)
                                .foregroundStyle(.gray)
                            Text("100")
                                .font(.default)
                                .foregroundStyle(.gray)
                        }
                    }
                    // Bubble Color Picker
                    GroupBox {
                        HStack {
                            Text("Bubble Color: ")
                                .bold()
                                .font(.title)
                            Circle()
                                .fill(viewModel.bubbleColor)
                                .frame(width: 20, height: 20)
                        }
                        HStack {
                            ForEach(viewModel.bubbleColorOptions, id: \.self) { color in
                                Circle()
                                    .fill(color)
                                    .frame(width: 20, height: 20)
                                    .onTapGesture {
                                        viewModel.bubbleColor = color
                                    }
                            }
                        }
                    }
                    // Bubble Velocity Slider
                    GroupBox {
                        
                    }
                }
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
