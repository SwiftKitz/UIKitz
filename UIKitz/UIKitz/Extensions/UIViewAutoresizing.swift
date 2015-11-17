//
//  UIViewAutoresizing.swift
//  UIKitz
//
//  Created by Mazyad Alabduljaleel on 8/17/15.
//  Copyright (c) 2015 Kitz. All rights reserved.
//

import UIKit


public extension UIViewAutoresizing {
    
    public static var FlexibleMargins: UIViewAutoresizing {
        
        return [
            .FlexibleLeftMargin,
            .FlexibleRightMargin,
            .FlexibleTopMargin,
            .FlexibleBottomMargin
        ]
    }
    
    public static var FlexibleSize: UIViewAutoresizing {
        return [.FlexibleWidth, .FlexibleHeight]
    }
}
