# PLTools

[![CI Status](https://img.shields.io/travis/pengli/PLTools.svg?style=flat)](https://travis-ci.org/pengli/PLTools)
[![Version](https://img.shields.io/cocoapods/v/PLTools.svg?style=flat)](https://cocoapods.org/pods/PLTools)
[![License](https://img.shields.io/cocoapods/l/PLTools.svg?style=flat)](https://cocoapods.org/pods/PLTools)
[![Platform](https://img.shields.io/cocoapods/p/PLTools.svg?style=flat)](https://cocoapods.org/pods/PLTools)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

let btn = UIButton(type: .custom)

btn.frame = CGRect(x: 100, y: 100, width: 100, height: 100)

btn.setTitle("test", state: .normal)

btn.setImage(UIImage(named: "test", state: .normal)

btn.layoutButton(style: .top, space: 10)

view.addSubView(btn)

## Requirements

## Installation

PLTools is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'PLTools'
```
## License

PLTools is available under the MIT license. See the LICENSE file for more info.
