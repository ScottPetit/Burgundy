//
//  NSLayoutAnchor+Extensions.swift
//  Burgundy
//
//  Created by Scott Petit on 6/25/16.
//  Copyright © 2016 Scott Petit. All rights reserved.
//

#if os(OSX)
import AppKit
#else
import UIKit
#endif

extension NSLayoutXAxisAnchor {
    @discardableResult public func layout(equalTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(equalTo: anchor, constant: constant)
        constraint.isActive = true
        return constraint
    }

    @discardableResult public func layout(greaterThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
        return constraint
    }

    @discardableResult public func layout(lessThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
}

extension NSLayoutYAxisAnchor {

    @discardableResult public func layout(equalTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(equalTo: anchor, constant: constant)
        constraint.isActive = true
        return constraint
    }

    @discardableResult public func layout(greaterThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
        return constraint
    }

    @discardableResult public func layout(lessThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
}

extension NSLayoutDimension {

    @discardableResult public func layout(equalTo constant: CGFloat) -> NSLayoutConstraint {
        let constraint = self.constraint(equalToConstant: constant)
        constraint.isActive = true
        return constraint
    }

    @discardableResult public func layout(greaterThanOrEqualTo constant: CGFloat) -> NSLayoutConstraint {
        let constraint = self.constraint(greaterThanOrEqualToConstant: constant)
        constraint.isActive = true
        return constraint
    }

    @discardableResult public func layout(lessThanOrEqualTo constant: CGFloat) -> NSLayoutConstraint {
        let constraint = self.constraint(lessThanOrEqualToConstant: constant)
        constraint.isActive = true
        return constraint
    }

    @discardableResult public func layout(equalTo anchor: NSLayoutDimension, multiplier: CGFloat, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(equalTo: anchor, multiplier: multiplier, constant: constant)
        constraint.isActive = true
        return constraint
    }

    @discardableResult public func layout(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier: CGFloat, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(greaterThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        constraint.isActive = true
        return constraint
    }

    @discardableResult public func layout(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier: CGFloat, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(lessThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        constraint.isActive = true
        return constraint
    }
}
