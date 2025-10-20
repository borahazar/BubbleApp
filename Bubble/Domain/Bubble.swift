import CoreGraphics
import Foundation
import SwiftUI

extension Color {
    static var random: Color {
        Color(
            red: Double.random(in: 0...1),
            green: Double.random(in: 0...1),
            blue: Double.random(in: 0...1)
        )
    }
}

let rainbowColorArray: [Color] = [
    .red,
    .orange,
    .yellow,
    .green,
    .blue,
    Color(hue: 0.69, saturation: 1, brightness: 0.9),
    .purple
]

struct Bubble {
    var position: CGPoint
    var radius: CGFloat
    var velocity: CGVector
    
    init(position: CGPoint, radius: CGFloat, radian: CGFloat, speed: CGFloat) {
        self.position = position
        self.radius = radius
        
        self.velocity = CGVector(dx: cos(radian) * speed, dy: -sin(radian) * speed)
    }
    
    mutating func move() {
        self.position.x += self.velocity.dx
        self.position.y += self.velocity.dy
    }
}
