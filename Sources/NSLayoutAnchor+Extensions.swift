//
//  NSLayoutAnchor+Extensions.swift
//  Burgundy
//
//  Created by Scott Petit on 6/25/16.
//  Copyright © 2016 Scott Petit. All rights reserved.
//

#if os(iOS) || os(tvOS)
    import UIKit
#elseif os(OSX)
    import AppKit
#endif

extension NSLayoutXAxisAnchor {
    @discardableResult public func layoutEqual(to anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) ->  NSLayoutConstraint {
        let constraint = self.constraint(equalTo: anchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func layoutGreaterThanOrEqual(to anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func layoutLessThanOrEqual(to anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
}


extension NSLayoutYAxisAnchor {
    
    @discardableResult public func layoutEqual(to anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) ->  NSLayoutConstraint {
        let constraint = self.constraint(equalTo: anchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func layoutGreaterThanOrEqual(to anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func layoutLessThanOrEqual(to anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
}

extension NSLayoutDimension {
    
    @discardableResult public func layoutEqual(to anchor: NSLayoutDimension, constant: CGFloat = 0) ->  NSLayoutConstraint {
        let constraint = self.constraint(equalTo: anchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func layoutGreaterThanOrEqual(to anchor: NSLayoutDimension, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func layoutLessThanOrEqual(to anchor: NSLayoutDimension, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    
    @discardableResult public func layoutEqual(to constant: CGFloat) -> NSLayoutConstraint {
        let constraint = self.constraint(equalToConstant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func layoutGreaterThanOrEqual(to constant: CGFloat) -> NSLayoutConstraint {
        let constraint = self.constraint(greaterThanOrEqualToConstant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func layoutLessThanOrEqual(to constant: CGFloat) -> NSLayoutConstraint {
        let constraint = self.constraint(lessThanOrEqualToConstant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func layoutEqual(to anchor: NSLayoutDimension, multiplier: CGFloat, constant: CGFloat = 0) -> NSLayoutConstraint! {
        let constraint = self.constraint(equalTo: anchor, multiplier: multiplier, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func layoutGreaterThanOrEqual(to anchor: NSLayoutDimension, multiplier: CGFloat, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(greaterThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func layoutLessThanOrEqual(to anchor: NSLayoutDimension, multiplier: CGFloat, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(lessThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        constraint.isActive = true
        return constraint
    }
}
