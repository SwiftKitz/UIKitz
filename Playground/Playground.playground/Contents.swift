
import UIKit
import UIKitz


//: # UIKitz
//: ### A compact set of complementary additions to UIKit

//: ## Features
//: #### UINibs
//: Quickly load nibs using the class name and casts them to appropriate type

// XIB file named "CustomClass" must exist in the bundle
// let object = Object.nibObject()                     // .Optional(CustomObject)
// let object = Object.nibObject(bundle: customBundle) // .Optional(CustomObject)
// let object = Object.nibObject(owner: someOwner)     // .Optional(CustomObject)

//: Quickly create ViewControllers from Storyboards using class name and casts them to appropriate type

// let controller = ViewController.createFromStoryboard(storyboard)
// returns .Optional(ViewController)

//: #### UIView
//: Easily support custom views in your ViewController

class CustomView: UIView {}

class ViewController: UIViewController {
    override func loadView() {
        view = CustomView()
    }
}

extension ViewController: CustomViewProvider {
    typealias ViewType = CustomView
}

let customView = ViewController().customView

//: Convenient grouping for UIViewAutoresizing

let flexibleMargins: UIViewAutoresizing = .FlexibleMargins
let flexibleSize: UIViewAutoresizing = .FlexibleSize
