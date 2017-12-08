//
//  Burgundy.swift
//  Burgundy
//
//  Created by Scott Petit on 12/14/16.
//  Copyright © 2016 Scott Petit. All rights reserved.
//

#if os(iOS) || os(tvOS)
    import UIKit
#elseif os(OSX)
    import AppKit
#endif

public enum LayoutEquality {
    case equal
    case lessThanOrEqual
    case greaterThanOrEqual
}

public enum LayoutAxis: Int {
    case top
    case leading
    case left
    case bottom
    case right
    case trailing
    case width
    case height
    case centerX
    case centerY
}

public struct LayoutAnchor {
    
    enum Anchor {
        case top(NSLayoutYAxisAnchor)
        case left(NSLayoutXAxisAnchor)
        case leading(NSLayoutXAxisAnchor)
        case bottom(NSLayoutYAxisAnchor)
        case right(NSLayoutXAxisAnchor)
        case trailing(NSLayoutXAxisAnchor)
        case width(NSLayoutDimension?)
        case height(NSLayoutDimension?)
        case centerX(NSLayoutXAxisAnchor)
        case centerY(NSLayoutYAxisAnchor)
    }
    let anchor: Anchor
    let constant: CGFloat
    let equality: LayoutEquality
    let multiplier: CGFloat
    
    public static func top(to otherAnchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, equality: LayoutEquality = .equal) -> LayoutAnchor {
        return LayoutAnchor(anchor: .top(otherAnchor), constant: constant, equality: equality, multiplier: 1)
    }
    
    public static func left(to otherAnchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, equality: LayoutEquality = .equal) -> LayoutAnchor {
        return LayoutAnchor(anchor: .left(otherAnchor), constant: constant, equality: equality, multiplier: 1)
    }
    
    public static func leading(to otherAnchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, equality: LayoutEquality = .equal) -> LayoutAnchor {
        return LayoutAnchor(anchor: .leading(otherAnchor), constant: constant, equality: equality, multiplier: 1)
    }
    
    public static func bottom(to otherAnchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, equality: LayoutEquality = .equal) -> LayoutAnchor {
        return LayoutAnchor(anchor: .bottom(otherAnchor), constant: constant, equality: equality, multiplier: 1)
    }
    
    public static func right(to otherAnchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, equality: LayoutEquality = .equal) -> LayoutAnchor {
        return LayoutAnchor(anchor: .right(otherAnchor), constant: constant, equality: equality, multiplier: 1)
    }
    
    public static func trailing(to otherAnchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, equality: LayoutEquality = .equal) -> LayoutAnchor {
        return LayoutAnchor(anchor: .trailing(otherAnchor), constant: constant, equality: equality, multiplier: 1)
    }
    
    public static func width(to otherAnchor: NSLayoutDimension? = nil, constant: CGFloat = 0, equality: LayoutEquality = .equal, multiplier: CGFloat = 1) -> LayoutAnchor {
        return LayoutAnchor(anchor: .width(otherAnchor), constant: constant, equality: equality, multiplier: multiplier)
    }
    
    public static func height(to otherAnchor: NSLayoutDimension? = nil, constant: CGFloat = 0, equality: LayoutEquality = .equal, multiplier: CGFloat = 1) -> LayoutAnchor {
        return LayoutAnchor(anchor: .height(otherAnchor), constant: constant, equality: equality, multiplier: multiplier)
    }
    
    public static func centerY(to otherAnchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, equality: LayoutEquality = .equal) -> LayoutAnchor {
        return LayoutAnchor(anchor: .centerY(otherAnchor), constant: constant, equality: equality, multiplier: 1)
    }
    
    public static func centerX(to otherAnchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, equality: LayoutEquality = .equal) -> LayoutAnchor {
        return LayoutAnchor(anchor: .centerX(otherAnchor), constant: constant, equality: equality, multiplier: 1)
    }
}
