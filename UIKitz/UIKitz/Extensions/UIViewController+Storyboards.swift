//
//  UIViewController.swift
//  UIKitz
//
//  Created by Mazyad Alabduljaleel on 1/24/15.
//  Copyright (c) 2015 Kitz. All rights reserved.
//

import UIKit


/** Easily instantiate view controllers from storyboards
    Assumes that Storyboard identifier == className
*/
public extension UIViewController {
    
    public class func createFromStoryboard(_ storyboard: UIStoryboard) -> Self? {
        return createFromStoryboard(self, storyboard: storyboard)
    }
    
    private class func createFromStoryboard<T>(_ type: T.Type, storyboard: UIStoryboard) -> T? {
        return storyboard.instantiateViewController(withIdentifier: className) as? T
    }
}
