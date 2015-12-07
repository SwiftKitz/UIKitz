//
//  UIViewController+IBActions.swift
//  UIKitz
//
//  Created by Mazyad Alabduljaleel on 12/4/15.
//
//

import UIKit


/** Convenient IBActions
 */
public extension UIViewController {
    
    @IBAction public func popNavigationController() {
        navigationController?.popViewControllerAnimated(true)
    }
}
