//
//  LayoutAnchor.swift
//  Burgundy
//
//  Created by Scott Petit on 2/23/18.
//  Copyright © 2018 Scott Petit. All rights reserved.
//

#if os(OSX)
import AppKit
#else
import UIKit
#endif

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
    let priority: LayoutPriority
    let identifier: String

    public static func top(to otherAnchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, equality: LayoutEquality = .equal, priority: LayoutPriority = .required, label: String = "", file: StaticString = #file, line: UInt = #line) -> LayoutAnchor {
        let identifier = self.identifier(for: label, file: file, line: line)
        return LayoutAnchor(anchor: .top(otherAnchor), constant: constant, equality: equality, multiplier: 1, priority: priority, identifier: identifier)
    }

    public static func left(to otherAnchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, equality: LayoutEquality = .equal, priority: LayoutPriority = .required, label: String = "", file: StaticString = #file, line: UInt = #line) -> LayoutAnchor {
        let identifier = self.identifier(for: label, file: file, line: line)
        return LayoutAnchor(anchor: .left(otherAnchor), constant: constant, equality: equality, multiplier: 1, priority: priority, identifier: identifier)
    }

    public static func leading(to otherAnchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, equality: LayoutEquality = .equal, priority: LayoutPriority = .required, label: String = "", file: StaticString = #file, line: UInt = #line) -> LayoutAnchor {
        let identifier = self.identifier(for: label, file: file, line: line)
        return LayoutAnchor(anchor: .leading(otherAnchor), constant: constant, equality: equality, multiplier: 1, priority: priority, identifier: identifier)
    }

    public static func bottom(to otherAnchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, equality: LayoutEquality = .equal, priority: LayoutPriority = .required, label: String = "", file: StaticString = #file, line: UInt = #line) -> LayoutAnchor {
        let identifier = self.identifier(for: label, file: file, line: line)
        return LayoutAnchor(anchor: .bottom(otherAnchor), constant: constant, equality: equality, multiplier: 1, priority: priority, identifier: identifier)
    }

    public static func right(to otherAnchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, equality: LayoutEquality = .equal, priority: LayoutPriority = .required, label: String = "", file: StaticString = #file, line: UInt = #line) -> LayoutAnchor {
        let identifier = self.identifier(for: label, file: file, line: line)
        return LayoutAnchor(anchor: .right(otherAnchor), constant: constant, equality: equality, multiplier: 1, priority: priority, identifier: identifier)
    }

    public static func trailing(to otherAnchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, equality: LayoutEquality = .equal, priority: LayoutPriority = .required, label: String = "", file: StaticString = #file, line: UInt = #line) -> LayoutAnchor {
        let identifier = self.identifier(for: label, file: file, line: line)
        return LayoutAnchor(anchor: .trailing(otherAnchor), constant: constant, equality: equality, multiplier: 1, priority: priority, identifier: identifier)
    }

    public static func width(to otherAnchor: NSLayoutDimension? = nil, constant: CGFloat = 0, equality: LayoutEquality = .equal, multiplier: CGFloat = 1, priority: LayoutPriority = .required, label: String = "", file: StaticString = #file, line: UInt = #line) -> LayoutAnchor {
        let identifier = self.identifier(for: label, file: file, line: line)
        return LayoutAnchor(anchor: .width(otherAnchor), constant: constant, equality: equality, multiplier: multiplier, priority: priority, identifier: identifier)
    }

    public static func height(to otherAnchor: NSLayoutDimension? = nil, constant: CGFloat = 0, equality: LayoutEquality = .equal, multiplier: CGFloat = 1, priority: LayoutPriority = .required, label: String = "", file: StaticString = #file, line: UInt = #line) -> LayoutAnchor {
        let identifier = self.identifier(for: label, file: file, line: line)
        return LayoutAnchor(anchor: .height(otherAnchor), constant: constant, equality: equality, multiplier: multiplier, priority: priority, identifier: identifier)
    }

    public static func centerY(to otherAnchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, equality: LayoutEquality = .equal, priority: LayoutPriority = .required, label: String = "", file: StaticString = #file, line: UInt = #line) -> LayoutAnchor {
        let identifier = self.identifier(for: label, file: file, line: line)
        return LayoutAnchor(anchor: .centerY(otherAnchor), constant: constant, equality: equality, multiplier: 1, priority: priority, identifier: identifier)
    }

    public static func centerX(to otherAnchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, equality: LayoutEquality = .equal, priority: LayoutPriority = .required, label: String = "", file: StaticString = #file, line: UInt = #line) -> LayoutAnchor {
        let identifier = self.identifier(for: label, file: file, line: line)
        return LayoutAnchor(anchor: .centerX(otherAnchor), constant: constant, equality: equality, multiplier: 1, priority: priority, identifier: identifier)
    }

    private static func identifier(for label: String, file: StaticString, line: UInt) -> String {
        let fileString = file.withUTF8Buffer { String(decoding: $0, as: UTF8.self) }
        let formattedFile = "\(fileString)".components(separatedBy: "/").last ?? fileString

        if label.isEmpty {
            return "\(formattedFile)#\(line)"
        } else {
            return "\(label)@\(formattedFile)#\(line)"
        }
    }
}
