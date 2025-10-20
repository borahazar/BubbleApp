import SwiftUI

struct SettingsView: View {
    @Bindable var viewModel: BubbleViewModel
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.purple.tertiary)
                .ignoresSafeArea()
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
                        Spacer()
                        Text("100")
                            .font(.default)
                            .foregroundStyle(.gray)
                    }.padding(.horizontal, 16)
                }
                // Bubble Color Picker
                GroupBox {
                    HStack {
                        Text("Bubble Color: ")
                            .bold()
                            .font(.title)
                        Circle()
                            .fill(viewModel.bubbleColor)
                            .frame(width: 40, height: 40)
                    }
                    HStack {
                        ForEach(viewModel.bubbleColorOptions, id: \.self) { color in
                            Circle()
                                .fill(color)
                                .frame(width: 40, height: 40)
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
}

//#Preview {
//    SettingsView(viewModel: BubbleViewModel())
//}
