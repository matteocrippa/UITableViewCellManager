//
//  UITableViewExtension.swift
//  Pods
//
//  Created by Alex Corlatti on 30/06/16.
//
//

import UIKit

public extension UITableView {

    public func createCell<T: UITableViewCell>(_ cellType: UITableViewCellStructureDataSource) -> T {

        if let nib = cellType.cellStructure.nib {

            self.register(UINib(nibName: nib, bundle: nil), forCellReuseIdentifier: cellType.cellStructure.identifier)

        }

        if let cell = self.dequeueReusableCell(withIdentifier: cellType.cellStructure.identifier) as? T {

            return cell

        } else { return T() }

    }

    public func setUICell<T: UITableViewCell>(_ cellType: UITableViewCellStructureDataSource, object: Any? = nil) -> T {

        let cell = self.createCell(cellType) as T
        cell.setUI(object)

        return cell

    }

}

public extension UICollectionView {
    
    public func createCell<T: UICollectionViewCell>(_ cellType: UICollectionViewCellStructureDataSource, indexPath: IndexPath) -> T {
        
        if let nib = cellType.cellStructure.nib {
            
            self.register(UINib(nibName: nib, bundle: nil), forCellWithReuseIdentifier: cellType.cellStructure.identifier)
            
        }
        
        if let cell = self.dequeueReusableCell(withReuseIdentifier: cellType.cellStructure.identifier, for: indexPath) as? T {
            
            return cell
            
        } else { return T() }
        
    }
    
    public func setUICell<T: UICollectionViewCell>(_ cellType: UICollectionViewCellStructureDataSource, indexPath: IndexPath, object: Any? = nil) -> T {
        
        let cell = self.createCell(cellType, indexPath: indexPath) as T
        cell.setUI(object)
        
        return cell
        
    }
    
}

