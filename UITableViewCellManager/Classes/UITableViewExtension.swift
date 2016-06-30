//
//  UITableViewExtension.swift
//  Pods
//
//  Created by Alex Corlatti on 30/06/16.
//
//

import UIKit

public extension UITableView {

    public func createCell<T: UITableViewCell>(cellType: UITableViewCellStructureDataSource) -> T {

        if let nib = cellType.cellStructure.nib {

            self.registerNib(UINib(nibName: nib, bundle: nil), forCellReuseIdentifier: cellType.cellStructure.identifier)

        }

        if let cell = self.dequeueReusableCellWithIdentifier(cellType.cellStructure.identifier) as? T {

            return cell

        } else { return T() }

    }

    public func setUICell<T: UITableViewCell>(cellType: UITableViewCellStructureDataSource, object: AnyObject? = nil) -> T {

        let cell = self.createCell(cellType) as T
        cell.setUI(object)

        return cell

    }

}
