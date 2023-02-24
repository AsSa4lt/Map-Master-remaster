//
//  CircleSegment.swift
//  Map Master
//
//  Created by Rostyslav on 24.02.2023.
//

import Foundation
import SwiftUI

struct CircleSegment: Shape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool
    
    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2
        
        var path = Path()
        path.move(to: center)
        path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: clockwise)
        path.addLine(to: CGPoint(x: center.x + Foundation.cos(endAngle.radians) * radius, y: center.y + sin(endAngle.radians) * radius))
        path.addLine(to: CGPoint(x: center.x + Foundation.cos(startAngle.radians) * radius, y: center.y + sin(startAngle.radians) * radius))
        path.closeSubpath()
        
        return path
    }
}

struct CircleSegmentOverlay: Shape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool
    
    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2
        
        var path = Path()
        path.move(to: center)
        path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: clockwise)
        
        path.addLine(to: CGPoint(x: center.x + Foundation.cos(startAngle.radians) * radius, y: center.y + sin(startAngle.radians) * radius))
        path.move(to: center)
        path.closeSubpath()
        
        return path
    }
}
