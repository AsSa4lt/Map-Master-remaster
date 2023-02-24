//
//  HalfCircle.swift
//  Map Master
//
//  Created by Rostyslav on 24.02.2023.
//

import Foundation
import SwiftUI

struct HalfCircle: Shape {
    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2
        let startAngle = Angle(degrees: 0)
        let endAngle = Angle(degrees: 180)
        
        var path = Path()
        path.move(to: CGPoint(x: center.x + radius, y: center.y))
        path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: false)
        path.addLine(to: CGPoint(x: center.x - radius, y: center.y))
        path.closeSubpath()
        
        return path
    }
}
