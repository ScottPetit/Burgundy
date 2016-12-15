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

public enum LayoutConstraint {
    case top(NSLayoutConstraint)
    case left(NSLayoutConstraint)
    case bottom(NSLayoutConstraint)
    case right(NSLayoutConstraint)
    case width(NSLayoutConstraint)
    case height(NSLayoutConstraint)
    case centerX(NSLayoutConstraint)
    case centerY(NSLayoutConstraint)
    
    public var constraint: NSLayoutConstraint {
        switch self {
        case .top(let constraint):
            return constraint
        case .left(let constraint):
            return constraint
        case .bottom(let constraint):
            return constraint
        case .right(let constraint):
            return constraint
        case .width(let constraint):
            return constraint
        case .height(let constraint):
            return constraint
        case .centerX(let constraint):
            return constraint
        case .centerY(let constraint):
            return constraint
        }
    }
}

public struct LayoutAnchor {
    
    enum Anchor {
        case top(NSLayoutYAxisAnchor)
        case left(NSLayoutXAxisAnchor)
        case bottom(NSLayoutYAxisAnchor)
        case right(NSLayoutXAxisAnchor)
        case width(NSLayoutDimension?)
        case height(NSLayoutDimension?)
        case centerX(NSLayoutXAxisAnchor)
        case centerY(NSLayoutYAxisAnchor)
    }
    let anchor: Anchor
    let constant: CGFloat
    let equality: LayoutEquality
    let multiplier: CGFloat
    
    static func top(to otherAnchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, equality: LayoutEquality = .equal) -> LayoutAnchor {
        return LayoutAnchor(anchor: .top(otherAnchor), constant: constant, equality: equality, multiplier: 1)
    }
    
    static func left(to otherAnchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, equality: LayoutEquality = .equal) -> LayoutAnchor {
        return LayoutAnchor(anchor: .left(otherAnchor), constant: constant, equality: equality, multiplier: 1)
    }
    
    static func bottom(to otherAnchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, equality: LayoutEquality = .equal) -> LayoutAnchor {
        return LayoutAnchor(anchor: .bottom(otherAnchor), constant: constant, equality: equality, multiplier: 1)
    }
    
    static func right(to otherAnchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, equality: LayoutEquality = .equal) -> LayoutAnchor {
        return LayoutAnchor(anchor: .right(otherAnchor), constant: constant, equality: equality, multiplier: 1)
    }
    
    static func width(to otherAnchor: NSLayoutDimension?, constant: CGFloat = 0, equality: LayoutEquality = .equal, multiplier: CGFloat = 1) -> LayoutAnchor {
        return LayoutAnchor(anchor: .width(otherAnchor), constant: constant, equality: equality, multiplier: multiplier)
    }
    
    static func height(to otherAnchor: NSLayoutDimension?, constant: CGFloat = 0, equality: LayoutEquality = .equal, multiplier: CGFloat = 1) -> LayoutAnchor {
        return LayoutAnchor(anchor: .height(otherAnchor), constant: constant, equality: equality, multiplier: multiplier)
    }
    
    static func centerY(to otherAnchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, equality: LayoutEquality = .equal) -> LayoutAnchor {
        return LayoutAnchor(anchor: .centerY(otherAnchor), constant: constant, equality: equality, multiplier: 1)
    }
    
    static func centerX(to otherAnchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, equality: LayoutEquality = .equal) -> LayoutAnchor {
        return LayoutAnchor(anchor: .centerX(otherAnchor), constant: constant, equality: equality, multiplier: 1)
    }
}
