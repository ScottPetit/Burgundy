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
    
    @discardableResult func layout(equalTo size: CGSize) -> [NSLayoutConstraint] {
        prepareForConstraints()
        
        let widthConstraint = layoutWidth(size.width)
        let heightConstraint = layoutHeight(size.height)
        return [widthConstraint, heightConstraint]
    }
    
    @discardableResult public func constrainWidth(_ width: CGFloat) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: width)
        constraint.identifier = "\(self).Width == \(width)"
        return constraint
    }
    
    @discardableResult public func layoutWidth(_ width: CGFloat) -> NSLayoutConstraint {
        let constraint = constrainWidth(width)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainHeight(_ height: CGFloat) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: height)
        constraint.identifier = "\(self).Height == \(height)"
        return constraint
    }
    
    @discardableResult public func layoutHeight(_ height: CGFloat) -> NSLayoutConstraint {
        let constraint = constrainHeight(height)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainWidthEqualToView(_ view: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1.0, constant: offset)
        constraint.identifier = "\(self).Width == \(view).Width + \(offset)"
        return constraint
    }
    
    @discardableResult public func layoutWidthEqualToView(_ view: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainWidthEqualToView(view, multiplier: 1, offset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainWidthEqualToView(_ view: UIView, multiplier: CGFloat = 1, offset: CGFloat = 0) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: multiplier, constant: offset)
        constraint.identifier = "\(self).Width == \(view).Width + \(offset)"
        return constraint
    }
    
    @discardableResult public func layoutWidthEqualToView(_ view: UIView, multiplier: CGFloat = 1, offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainWidthEqualToView(view, multiplier: multiplier, offset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainHeightEqualToView(_ view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        prepareForConstraints()
        
        return constrainHeightEqualToView(view, multiplier: 1, offset: offset)
    }
    
    @discardableResult public func constrainHeightEqualToView(_ view: UIView, multiplier: CGFloat = 1, offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: multiplier, constant: offset)
        constraint.identifier = "\(self).Height == \(view).Height + \(offset)"
        return constraint
    }
    
    @discardableResult public func layoutHeightEqualToView(_ view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainHeightEqualToView(view, withOffset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func layoutHeightEqualToView(_ view: UIView, multiplier: CGFloat = 1, offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainHeightEqualToView(view, multiplier: multiplier, offset: offset)
        constraint.isActive = true
        return constraint
    }
    
    //MARK: Edges
    
    @discardableResult public func constrainEdgesToSuperview(_ insets: UIEdgeInsets = UIEdgeInsetsZero) -> [NSLayoutConstraint] {
        let top = constrainTopToSuperview(insets.top)
        let right = constrainRightToSuperview(insets.right)
        let bottom = constrainBottomToSuperview(insets.bottom)
        let left = constrainLeftToSuperview(insets.left)
        return [top, right, bottom, left]
    }
    
    @discardableResult public func layoutEdgesToSuperview(_ insets: UIEdgeInsets = UIEdgeInsetsZero) -> [NSLayoutConstraint] {
        let top = layoutTopToSuperview(insets.top)
        let right = layoutRightToSuperview(insets.right)
        let bottom = layoutBottomToSuperview(insets.bottom)
        let left = layoutLeftToSuperview(insets.left)
        return [top, right, bottom, left]
    }
    
    @discardableResult public func constrainLeftToView(_ view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1.0, constant: offset)
        constraint.identifier = "\(self).Left == \(view).Left + \(offset)"
        return constraint
    }
    
    @discardableResult public func layoutLeftToView(_ view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainLeftToView(view, withOffset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainLeftToSuperview(_ offset: CGFloat = 0) -> NSLayoutConstraint {
        return constrainLeftToView(superview!, withOffset: offset)
    }
    
    @discardableResult public func layoutLeftToSuperview(_ offset: CGFloat = 0) -> NSLayoutConstraint {
        return layoutLeftToView(superview!, withOffset: offset)
    }
    
    @discardableResult public func constrainTopToView(_ view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: offset)
        constraint.identifier = "\(self).Top == \(view).Top + \(offset)"
        return constraint
    }
    
    @discardableResult public func layoutTopToView(_ view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainTopToView(view, withOffset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainTopToSuperview(_ offset: CGFloat = 0) -> NSLayoutConstraint {
        return constrainTopToView(superview!, withOffset: offset)
    }
    
    @discardableResult public func layoutTopToSuperview(_ offset: CGFloat = 0) -> NSLayoutConstraint {
        return layoutTopToView(superview!, withOffset: offset)
    }
    
    @discardableResult public func constrainRightToView(_ view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1.0, constant: offset)
        constraint.identifier = "\(self).Right == \(view).Right + \(offset)"
        return constraint
    }
    
    @discardableResult public func layoutRightToView(_ view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainRightToView(view, withOffset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainRightToSuperview(_ offset: CGFloat = 0) -> NSLayoutConstraint {
        return constrainRightToView(superview!, withOffset: offset)
    }
    
    @discardableResult public func layoutRightToSuperview(_ offset: CGFloat = 0) -> NSLayoutConstraint {
        return layoutRightToView(superview!, withOffset: offset)
    }
    
    @discardableResult public func constrainBottomToView(_ view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: offset)
        constraint.identifier = "\(self).Bottom == \(view).Bottom + \(offset)"
        return constraint
    }
    
    @discardableResult public func layoutBottomToView(_ view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainBottomToView(view, withOffset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainBottomToSuperview(_ offset: CGFloat = 0) -> NSLayoutConstraint {
        return constrainBottomToView(superview!, withOffset: offset)
    }
    
    @discardableResult public func layoutBottomToSuperview(_ offset: CGFloat = 0) -> NSLayoutConstraint {
        return layoutBottomToView(superview!, withOffset: offset)
    }
    
    //MARK: Center
    
    @discardableResult public func constrainCenterXToView(_ view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: offset)
        constraint.identifier = "\(self).CenterX == \(view).CenterX + \(offset)"
        return constraint
    }
    
    @discardableResult public func layoutCenterXToView(_ view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainCenterXToView(view, withOffset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainCenterXToSuperview(_ offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainCenterXToView(superview!, withOffset: offset)
        return constraint
    }
    
    @discardableResult public func layoutCenterXToSuperview(_ offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainCenterXToSuperview(offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainCenterYToView(_ view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: offset)
        constraint.identifier = "\(self).CenterY == \(view).CenterY + \(offset)"
        return constraint
    }
    
    @discardableResult public func layoutCenterYToView(_ view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainCenterYToView(view, withOffset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainCenterYToSuperview(_ offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainCenterYToView(superview!, withOffset: offset)
        return constraint
    }
    
    @discardableResult public func layoutCenterYToSuperview(_ offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainCenterYToView(superview!, withOffset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainTopToSiblingView(_ view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: offset)
        constraint.identifier = "\(self).Top == \(view).Bottom + \(offset)"
        return constraint
    }
    
    @discardableResult public func layoutTopToSiblingView(_ view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainTopToSiblingView(view, withOffset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainLeftToSiblingView(_ view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .left, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1.0, constant: offset)
        constraint.identifier = "\(self).Left == \(view).Right + \(offset)"
        return constraint
    }
    
    @discardableResult public func layoutLeftToSiblingView(_ view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainLeftToSiblingView(view, withOffset: offset)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult public func constrainBottomToSiblingView(_ view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        prepareForConstraints()
        
        let constraint = NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: offset)
        constraint.identifier = "\(self).Bottom == \(view).Top + \(offset)"
        return constraint
    }
    
    @discardableResult public func layoutBottomToSiblingView(_ view: UIView, withOffset offset: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = constrainBottomToSiblingView(view, withOffset: offset)
        constraint.isActive = true
        return constraint
    }
    
    private func prepareForConstraints() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
