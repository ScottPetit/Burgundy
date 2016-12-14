//
//  UIView+Extensions.swift
//  Burgundy
//
//  Created by Scott Petit on 6/25/16.
//  Copyright © 2016 Scott Petit. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    @discardableResult public func constrain(width: CGFloat) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: width)
        constraint.identifier = "\(self).Width == \(width)"
        return constraint
    }
    
    @discardableResult public func layout(width: CGFloat) -> NSLayoutConstraint {
        let constraint = constrain(width: width)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrain(height: CGFloat) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: height)
        constraint.identifier = "\(self).Height == \(height)"
        return constraint
    }
    
    @discardableResult public func layout(height: CGFloat) -> NSLayoutConstraint {
        let constraint = constrain(height: height)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainWidth(equalToView view: UIView, multiplier: CGFloat = 1, offset: CGFloat = 0) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: multiplier, constant: offset)
        constraint.identifier = "\(self).Width == \(view).Width + \(offset)"
        return constraint
    }
    
    @discardableResult public func layoutWidth(equalToView view: UIView, multiplier: CGFloat = 1, offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainWidth(equalToView: view, multiplier: multiplier, offset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainHeight(equalToView view: UIView, multiplier: CGFloat = 1, offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: multiplier, constant: offset)
        constraint.identifier = "\(self).Height == \(view).Height + \(offset)"
        return constraint
    }
        
    @discardableResult public func layoutHeight(equalToView view: UIView, multiplier: CGFloat = 1, offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainHeight(equalToView: view, multiplier: multiplier, offset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func layout(equalTo view: UIView) -> [NSLayoutConstraint] {
        let top = layoutTop(toView: view)
        let right = layoutRight(toView: view)
        let bottom = layoutBottom(toView: view)
        let left = layoutLeft(toView: view)
        
        return [top, right, bottom, left]
    }
    
    @discardableResult public func layout(centerIn view: UIView) -> [NSLayoutConstraint] {
        let centerX = layoutCenterX(toView: view)
        let centerY = layoutCenterY(toView: view)
        return [centerX, centerY]
    }
    
    //MARK: Edges
    
    @discardableResult public func constrainEdgesToSuperview(insets: UIEdgeInsets = .zero) -> [NSLayoutConstraint] {
        let top = constrainTopToSuperview(offset: insets.top)
        let right = constrainRightToSuperview(offset: insets.right)
        let bottom = constrainBottomToSuperview(offset: insets.bottom)
        let left = constrainLeftToSuperview(offset: insets.left)
        return [top, right, bottom, left]
    }
    
    @discardableResult public func layoutEdgesToSuperview(insets: UIEdgeInsets = .zero) -> [NSLayoutConstraint] {
        let top = layoutTopToSuperview(offset: insets.top)
        let right = layoutRightToSuperview(offset: insets.right)
        let bottom = layoutBottomToSuperview(offset: insets.bottom)
        let left = layoutLeftToSuperview(offset: insets.left)
        return [top, right, bottom, left]
    }
    
    @discardableResult public func constrainLeft(toView view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1.0, constant: offset)
        constraint.identifier = "\(self).Left == \(view).Left + \(offset)"
        return constraint
    }
    
    @discardableResult public func layoutLeft(toView view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainLeft(toView: view, withOffset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainLeftToSuperview(offset: CGFloat = 0) -> NSLayoutConstraint {
        return constrainLeft(toView: superview!, withOffset: offset)
    }
    
    @discardableResult public func layoutLeftToSuperview(offset: CGFloat = 0) -> NSLayoutConstraint {
        return layoutLeft(toView: superview!, withOffset: offset)
    }
    
    @discardableResult public func constrainTop(toView view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: offset)
        constraint.identifier = "\(self).Top == \(view).Top + \(offset)"
        return constraint
    }
    
    @discardableResult public func layoutTop(toView view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainTop(toView: view, withOffset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainTopToSuperview(offset: CGFloat = 0) -> NSLayoutConstraint {
        return constrainTop(toView: superview!, withOffset: offset)
    }
    
    @discardableResult public func layoutTopToSuperview(offset: CGFloat = 0) -> NSLayoutConstraint {
        return layoutTop(toView: superview!, withOffset: offset)
    }
    
    @discardableResult public func constrainRight(toView view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1.0, constant: offset)
        constraint.identifier = "\(self).Right == \(view).Right + \(offset)"
        return constraint
    }
    
    @discardableResult public func layoutRight(toView view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainRight(toView: view, withOffset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainRightToSuperview(offset: CGFloat = 0) -> NSLayoutConstraint {
        return constrainRight(toView: superview!, withOffset: offset)
    }
    
    @discardableResult public func layoutRightToSuperview(offset: CGFloat = 0) -> NSLayoutConstraint {
        return layoutRight(toView: superview!, withOffset: offset)
    }
    
    @discardableResult public func constrainBottom(toView view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: offset)
        constraint.identifier = "\(self).Bottom == \(view).Bottom + \(offset)"
        return constraint
    }
    
    @discardableResult public func layoutBottom(toView view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainBottom(toView: view, withOffset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainBottomToSuperview(offset: CGFloat = 0) -> NSLayoutConstraint {
        return constrainBottom(toView: superview!, withOffset: offset)
    }
    
    @discardableResult public func layoutBottomToSuperview(offset: CGFloat = 0) -> NSLayoutConstraint {
        return layoutBottom(toView: superview!, withOffset: offset)
    }
    
    //MARK: Center
    
    @discardableResult public func constrainCenterX(toView view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: offset)
        constraint.identifier = "\(self).CenterX == \(view).CenterX + \(offset)"
        return constraint
    }
    
    @discardableResult public func layoutCenterX(toView view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainCenterX(toView: view, withOffset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainCenterXToSuperview(offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainCenterX(toView: superview!, withOffset: offset)
        return constraint
    }
    
    @discardableResult public func layoutCenterXToSuperview(offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainCenterXToSuperview(offset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainCenterY(toView view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: offset)
        constraint.identifier = "\(self).CenterY == \(view).CenterY + \(offset)"
        return constraint
    }
    
    @discardableResult public func layoutCenterY(toView view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainCenterY(toView: view, withOffset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainCenterYToSuperview(offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainCenterY(toView: superview!, withOffset: offset)
        return constraint
    }
    
    @discardableResult public func layoutCenterYToSuperview(offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainCenterY(toView: superview!, withOffset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainTop(toSiblingView view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: offset)
        constraint.identifier = "\(self).Top == \(view).Bottom + \(offset)"
        return constraint
    }
    
    @discardableResult public func layoutTop(toSiblingView view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainTop(toSiblingView: view, withOffset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainLeft(toSiblingView view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .left, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1.0, constant: offset)
        constraint.identifier = "\(self).Left == \(view).Right + \(offset)"
        return constraint
    }
    
    @discardableResult public func layoutLeft(toSiblingView view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainLeft(toSiblingView: view, withOffset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainBottom(toSiblingView view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: offset)
        constraint.identifier = "\(self).Bottom == \(view).Top + \(offset)"
        return constraint
    }
    
    @discardableResult public func layoutBottom(toSiblingView view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainBottom(toSiblingView: view, withOffset: offset)
        constraint.isActive = true
        return constraint
    }
    
    private func prepareForConstraints() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func layout<T>(_ anchor: NSLayoutAnchor<T>, to otherAnchor: NSLayoutAnchor<T>, constraint: LayoutAnchor) -> NSLayoutConstraint {
        let newConstraint: NSLayoutConstraint
        switch constraint.equality {
        case .equal:
            newConstraint = anchor.layout(equalTo: otherAnchor, constant: constraint.constant)
        case .lessThanOrEqual:
            newConstraint = anchor.layout(lessThanOrEqualTo: otherAnchor, constant: constraint.constant)
        case .greaterThanOrEqual:
            newConstraint = anchor.layout(greaterThanOrEqualTo: otherAnchor, constant: constraint.constant)
        }
        return newConstraint
    }
    
    
    @discardableResult func layout(constraints: [LayoutAnchor]) -> [LayoutConstraint] {
        prepareForConstraints()
        
        var finalConstraints: [LayoutConstraint] = []
        for constraint in constraints {
            switch constraint.anchor {
            case .top(let otherAnchor):
                let newConstraint = self.layout(self.topAnchor, to: otherAnchor, constraint: constraint)
                finalConstraints.append(.top(newConstraint))
            case .left(let otherAnchor):
                let newConstraint = self.layout(self.leftAnchor, to: otherAnchor, constraint: constraint)
                finalConstraints.append(.left(newConstraint))
            case .bottom(let otherAnchor):
                let newConstraint = self.layout(self.bottomAnchor, to: otherAnchor, constraint: constraint)
                finalConstraints.append(.bottom(newConstraint))
            case .right(let otherAnchor):
                let newConstraint = self.layout(self.rightAnchor, to: otherAnchor, constraint: constraint)
                finalConstraints.append(.right(newConstraint))
            case .width(let otherAnchor):
                if let otherAnchor = otherAnchor {
                    let newConstraint = widthAnchor.layout(equalTo: otherAnchor, multiplier: constraint.multiplier, constant: constraint.constant)
                    finalConstraints.append(.width(newConstraint))
                } else {
                    let newConstraint: NSLayoutConstraint
                    switch constraint.equality {
                    case .equal:
                        newConstraint = self.widthAnchor.layout(equalTo: constraint.constant)
                    case .lessThanOrEqual:
                        newConstraint = self.widthAnchor.layout(lessThanOrEqualTo: constraint.constant)
                    case .greaterThanOrEqual:
                        newConstraint = self.widthAnchor.layout(greaterThanOrEqualTo: constraint.constant)
                    }
                    finalConstraints.append(.width(newConstraint))
                }
            case .height(let otherAnchor):
                if let otherAnchor = otherAnchor {
                    let newConstraint = heightAnchor.layout(equalTo: otherAnchor, multiplier: constraint.multiplier, constant: constraint.constant)
                    finalConstraints.append(.height(newConstraint))
                } else {
                    let newConstraint: NSLayoutConstraint
                    switch constraint.equality {
                    case .equal:                        
                        newConstraint = self.heightAnchor.layout(equalTo: constraint.constant)
                    case .lessThanOrEqual:
                        newConstraint = self.heightAnchor.layout(lessThanOrEqualTo: constraint.constant)
                    case .greaterThanOrEqual:
                        newConstraint = self.heightAnchor.layout(greaterThanOrEqualTo: constraint.constant)
                    }
                    finalConstraints.append(.height(newConstraint))
                }
                
            case .centerX(let otherAnchor):
                let newConstraint = self.layout(self.centerXAnchor, to: otherAnchor, constraint: constraint)
                finalConstraints.append(.centerX(newConstraint))
            case .centerY(let otherAnchor):
                let newConstraint = self.layout(self.centerYAnchor, to: otherAnchor, constraint: constraint)
                finalConstraints.append(.centerY(newConstraint))
            }
        }
        
        return finalConstraints
    }
}
