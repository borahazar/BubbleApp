import SwiftUI
import Observation

@Observable
final class BubbleViewModel {
    
    var bubbles: [Bubble] = []
    var isRunning: Bool = false
    
    var bubbleCount: CGFloat = 50
    var bubbleRadius: CGFloat = 0
    var bubbleSpeed: CGFloat = 3
    var bubbleColor: Color = Color.black
    var bubbleColorOptions: [Color] = [.blue, .red, .orange, .green, .pink, .cyan]
    
    var screenWidth: CGFloat = 0
    var screenHeight:  CGFloat = 0
    
    private var timer: Timer?
    
    func startSimulation() {
        
    }
    
    func pauseSimulation() {
        
    }
    
    func updateBubbles() {
        
    }
    
    private func checkCollision(for bubble: inout Bubble) {
        
    }
}
