//
//  NSObject.swift
//  UIKitz
//
//  Created by Mazyad Alabduljaleel on 1/24/15.
//  Copyright (c) 2015 Kitz. All rights reserved.
//

import UIKit


/** Easily access nib related resources, with casting
    Assumes that nibName == className
*/
public extension NSObject {
    
    public static func nib(bundle bundle: NSBundle? = nil) -> UINib {
        return UINib(nibName: className, bundle: bundle)
    }
    
    public static func nibObject(bundle bundle: NSBundle? = nil, owner: AnyObject? = nil) -> Self? {
        return _createFromNib(self, bundle: bundle, owner: owner)
    }
    
    private class func _createFromNib<T>(type: T.Type, bundle: NSBundle?, owner: AnyObject? = nil) -> T? {
        
        return nib(bundle: bundle).instantiateWithOwner(owner, options: nil)
            .flatMap { $0 as? T }
            .first
    }
}


// GTH: Reference from Foundationz instead

public extension NSObject {
    
    public func smartCopy() -> Self {
        return smartCopyObject()
    }
    
    private func smartCopyObject<T>() -> T {
        return copy() as! T
    }
    
    public class var className: String {
        
        /* Swift split is INSANELY slow */
        let classString = NSStringFromClass(self) as NSString
        let comps = classString.componentsSeparatedByString(".")
        
        if let last = comps.last {
            return last
        }
        
        return classString as String
    }
}
