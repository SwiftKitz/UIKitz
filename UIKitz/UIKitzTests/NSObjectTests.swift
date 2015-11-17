//
//  UIKitz_iosTests.swift
//  UIKitz-iosTests
//
//  Created by Mazyad Alabduljaleel on 11/16/15.
//
//

import XCTest
@testable import UIKitz


// private classes require @objc annotation
@objc(PrivateClass)
private class PrivateClass: NSObject {}

class CustomClass: NSObject {
    @IBInspectable var testValue: Int = 0
}


class NSObjectTests: XCTestCase {
        
    func testClassName() {
        
        XCTAssertEqual(NSObject.className, "NSObject")
        XCTAssertEqual(NSCoder.className, "NSCoder")
        XCTAssertEqual(CustomClass.className, "CustomClass")
        XCTAssertEqual(PrivateClass.className, "PrivateClass")
    }
    
    func testSmartCopy() {
        
        let array = NSArray(array: [5, "hi", 7.0])
        XCTAssertEqual(array.smartCopy(), array)
    }
    
    func testNib() {
        
        XCTAssertNotNil(CustomClass.nib(bundle: TestBundle))
    }
    
    func testNibObject() {
        
        let object = CustomClass.nibObject(bundle: TestBundle)
        
        XCTAssertNotNil(object)
        XCTAssertEqual(object?.testValue, 10)
    }
}
