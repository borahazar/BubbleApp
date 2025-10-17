import CoreGraphics
import Foundation

struct Bubble {
    var position: CGPoint
    var radius: CGFloat
    var velocity: CGVector
    
    init(position: CGPoint, radius: CGFloat, radian: CGFloat, speed: CGFloat) {
        self.position = position
        self.radius = radius
        
        self.velocity = CGVector(dx: cos(radian) * speed, dy: sin(radian) * speed)
    }
    
    mutating func move() {
        self.position.x += self.velocity.dx
        self.position.y += self.velocity.dy
    }
}
