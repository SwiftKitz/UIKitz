//
//  CustomViewProvider.swift
//  UIKitz
//
//  Created by Mazyad Alabduljaleel on 10/13/15.
//  Copyright © 2015 Kitz. All rights reserved.
//

import UIKit


/** Declare that your `UIViewController` has a custom `UIView`
    loaded by simply conforming to `CustomViewProvider` protocol
 
    ```
    extension ViewController: CustomViewProvider {
        typealias ViewType = CustomView
    }
    ```
 
    This will give you access to the `customView` property.
*/
public protocol CustomViewProvider {
    typealias ViewType
}

public extension CustomViewProvider where Self: UIViewController, Self.ViewType: UIView {
    
    public var customView: Self.ViewType {
        return view as! Self.ViewType
    }
}
