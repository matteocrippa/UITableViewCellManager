# UITableViewCellManager

[![CI Status](http://img.shields.io/travis/Alex Corlatti/UITableViewCellManager.svg?style=flat)](https://travis-ci.org/Alex Corlatti/UITableViewCellManager)
[![Version](https://img.shields.io/cocoapods/v/UITableViewCellManager.svg?style=flat)](http://cocoapods.org/pods/UITableViewCellManager)
[![License](https://img.shields.io/cocoapods/l/UITableViewCellManager.svg?style=flat)](http://cocoapods.org/pods/UITableViewCellManager)
[![Platform](https://img.shields.io/cocoapods/p/UITableViewCellManager.svg?style=flat)](http://cocoapods.org/pods/UITableViewCellManager)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- iOS 8.0+
- Xcode 7.3+

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 0.39.0+ is required to build UITableViewCellManager

To integrate UITableViewCellManager into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

pod 'UITableViewCellManager'
```

Then, run the following command:

```bash
$ pod install
```

## Usage

You have to create an ```enum``` that conform ```UITableViewCellStructureDataSource```, variable ```cellStructure``` is mandatory.

```cellStructure``` is a variable of type ```UITableViewCellStructure```, a struct with these parameters:

* ```type: UITableViewCell``` the type of your cell
* ```identifier: String``` the reusable identifier setted in Interface builder 
* ```nib: String?``` the nib name if the cell is loaded from a .xib file, by default is nil

### Create your cell manager
```swift
import UITableViewCellManager

enum MyCellType: UITableViewCellStructureDataSource {

    case simpleCell
    case nibCell

    var cellStructure: UITableViewCellStructure {

        switch self {

        case .simpleCell:
            return UITableViewCellStructure(type: UITableViewCell(), identifier: "SimpleCell")

        case .nibCell:
            return UITableViewCellStructure(type: NibTableViewCell(), identifier: "NibCell", nib: "NibTableViewCell")

        }

    }

}
```

### Use it in your table
The library add some methods to ```UITableView``` and ```UITableViewCell```.

In ```UITableView``` now you can create a cell and use it with 

``` 
func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

 	let myCell = tableView.createCell(cellType: UITableViewCellStructureDataSource)

	//...do something with the cell

	return myCell

}

```
or setting directly the UI with

``` 
func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

 	return tableView.setUICell(cellType: UITableViewCellStructureDataSource, object: Anyobject)

}

```
To use it, your cell must to override the new ```UITableViewCell``` method ```setUI(object: AnyObject)``` like this way

``` 
override func setUI(object: AnyObject?) {
        
	guard let text = object as? String else { return }
     
	myCellLabel.text = text
        
}

```

## Author

Alex Corlatti, alex.corlatti@gmail.com

## License

UITableViewCellManager is available under the MIT license. See the LICENSE file for more info.
