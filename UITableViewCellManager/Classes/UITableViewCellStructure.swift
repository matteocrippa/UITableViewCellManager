//
//  UITableViewCellStructure.swift
//  Pods
//
//  Created by Alex Corlatti on 30/06/16.
//
//

import UIKit

public protocol UITableViewCellStructureDataSource {

    var cellStructure: UITableViewCellStructure { get }

}

public struct UITableViewCellStructure {

    public var type: UITableViewCell
    public var identifier: String
    public var nib: String?

    public init(type: UITableViewCell, identifier: String, nib: String? = nil) {

        self.type = type
        self.identifier = identifier
        self.nib = nib

    }

}

public protocol UICollectionViewCellStructureDataSource {
    
    var cellStructure: UICollectionViewCellStructure { get }
    
}

public struct UICollectionViewCellStructure {
    
    public var type: UICollectionViewCell
    public var identifier: String
    public var nib: String?
    
    public init(type: UICollectionViewCell, identifier: String, nib: String? = nil) {
        
        self.type = type
        self.identifier = identifier
        self.nib = nib
        
    }
    
}

