//
//  MyCellType.swift
//  UITableViewCellManager
//
//  Created by Alex Corlatti on 30/06/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import UIKit
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
