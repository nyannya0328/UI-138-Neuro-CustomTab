//
//  CustomShape.swift
//  UI-138
//
//  Created by にゃんにゃん丸 on 2021/03/04.
//

import SwiftUI

struct CustomShape: Shape {
    
    var tabpoint : CGFloat
    var animatableData : CGFloat{
        
        get{return tabpoint}
        set{tabpoint = newValue}
        
    }
    func path(in rect: CGRect) -> Path {
        return Path{path in
            
            
            path.move(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            
            let mid = tabpoint
            
            path.move(to: CGPoint(x: mid - 40, y: rect.height))
            
            let to = CGPoint(x: mid, y: rect.height - 20)
            let control1 = CGPoint(x: mid - 15, y: rect.height)
            let control2 = CGPoint(x: mid - 15, y: rect.height - 20)
            
            let to2 = CGPoint(x: mid + 40, y: rect.height)
            let control3 = CGPoint(x: mid + 15, y: rect.height - 20)
            let control4 = CGPoint(x: mid + 15, y: rect.height)
            
            path.addCurve(to: to, control1: control1, control2: control2)
            path.addCurve(to: to2, control1: control3, control2: control4)
            
            
        }
    }
}

