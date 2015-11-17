
# UIKitz

![Version](https://img.shields.io/badge/version-prerelease-orange.svg)
[![Travis CI](https://travis-ci.org/SwiftKitz/UIKitz.svg?branch=master)](https://travis-ci.org/SwiftKitz/UIKitz)
![Swift](https://img.shields.io/badge/swift-2.1-blue.svg)
![Platforms](https://img.shields.io/badge/platform-ios%20%7C%20watchos%20%7C%20tvos-lightgrey.svg)

A compact set of complementary additions to UIKit

_Even though I shipped it with my app, I still need to invest the time to set this up, and finalize the API. Contributors welcome!_

## Highlights

+ __Compact and Transparent:__<br />
Each addition made to the framework is required to be small and as transparent about errors and issues as the underlying API.

+ __Full Documentation:__<br />
You can refer to the playground in the project or this read me for the available features.

+ __Full Testing:__<br />
Aiming for 100% test coverage for such scattered functionality is a no-brainer.

## Features

#### UINibs

__Instantiate Objects from XIBs__<br />
_using class name and safe casting_

```swift
// XIB file named "CustomClass" must exist in the bundle
let object = Object.nibObject()                     // .Optional(CustomObject)
let object = Object.nibObject(bundle: customBundle) // .Optional(CustomObject)
let object = Object.nibObject(owner: someOwner)     // .Optional(CustomObject)
```

__Instantiate ViewControllers from Storyboards__<br />
_using class name and safe casting_

```swift
let controller = ViewController.createFromStoryboard(storyboard)
// returns .Optional(ViewController)
```

#### UIView

__Easily support custom views in your ViewController__

```swift
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
```

__Convenient grouping for `UIViewAutoresizing`__

```swift
let flexibleMargins: UIViewAutoresizing = .FlexibleMargins
let flexibleSize: UIViewAutoresizing = .FlexibleSize
```

## Getting Started

1. Submodule only for now ... Cocoapods, Carthage, and better instructions coming soon.

## Motivation

When our team in my previous company exceeded 2 engineers, things quickly became hectic in terms of convention. In the spirit of fighting this problem, we strove to eliminate the cause of inconsistency altogether and build a very thin convenience layer that is intuitive and easy to pickup.

A good example would be eliminating the need for defining `UIxxxCell` identifiers all over the place, and stick with class name as the identifier (which covered 100% of our use cases).

## Author

Mazyod ([@Mazyod](http://twitter.com/mazyod))

## License

UIKitz is released under the MIT license. See LICENSE for details.
