import SwiftUI
import Observation

@Observable
final class BubbleViewModel {
    
    var bubbles: [Bubble] = []
    var isRunning: Bool = false
    
    var bubbleCount: Int = 0
    var bubbleRadius: CGFloat = 0
    var bubbleSpeed: CGFloat = 3
    var bubbleColors: [Color] = [.red, .blue, .green]
    
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
