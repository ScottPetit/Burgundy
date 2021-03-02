//
//  LayoutPriority.swift
//  Burgundy
//
//  Created by Scott Petit on 3/01/21.
//  Copyright © 2021 Scott Petit. All rights reserved.
//

#if os(OSX)
import AppKit
public typealias LayoutPriority = NSLayoutConstraint.Priority
#else
import UIKit
public typealias LayoutPriority = UILayoutPriority
#endif


