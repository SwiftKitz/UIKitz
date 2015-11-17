//
//  UIViewControllerTests.swift
//  UIKitz
//
//  Created by Mazyad Alabduljaleel on 11/16/15.
//
//

import XCTest
@testable import UIKitz


class ViewController: UIViewController {
    @IBInspectable var testValue: Int = 0
}


class UIViewControllerTests: XCTestCase {
    
    func testCreateFromStoryboard() {
        
        let storyboard = UIStoryboard(name: "Test", bundle: TestBundle)
        let controller = ViewController.createFromStoryboard(storyboard)
        
        XCTAssertNotNil(controller)
        XCTAssertEqual(controller?.testValue, 10)
    }
}
