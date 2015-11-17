//
//  UIViewAutoresizingTests.swift
//  UIKitz
//
//  Created by Mazyad Alabduljaleel on 11/16/15.
//
//

import XCTest
@testable import UIKitz


class UIViewAutoresizingTests: XCTestCase {
    
    func testFlexibleMargins() {
        
        XCTAssertEqual(UIViewAutoresizing.FlexibleMargins, [
            .FlexibleBottomMargin,
            .FlexibleLeftMargin,
            .FlexibleRightMargin,
            .FlexibleTopMargin,
        ])
    }
    
    func testFlexibleSize() {
        
        XCTAssertEqual(UIViewAutoresizing.FlexibleSize, [
            .FlexibleWidth,
            .FlexibleHeight,
        ])
    }
}
