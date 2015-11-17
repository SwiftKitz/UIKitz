//
//  CustomViewProviderTests.swift
//  UIKitz
//
//  Created by Mazyad Alabduljaleel on 11/16/15.
//
//

import XCTest
@testable import UIKitz


class CustomView: UIView {
    var customVar = 10
}

class CustomViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = CustomView()
    }
}

extension CustomViewController: CustomViewProvider {
    typealias ViewType = CustomView
}


class CustomViewProviderTests: XCTestCase {

    func testCustomViewProvider() {
        
        let controller = CustomViewController()
        XCTAssertEqual(controller.customView.customVar, 10)
    }
}
