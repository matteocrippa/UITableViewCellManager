//
//  ViewController.swift
//  UITableViewCellManager
//
//  Created by Alex Corlatti on 06/30/2016.
//  Copyright (c) 2016 Alex Corlatti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table: UITableView!

    var elements: [MyCellType] {

        return[
            MyCellType.simpleCell,
            MyCellType.nibCell
        ]

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return elements.count

    }

}

extension ViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard indexPath.row < elements.count else { return UITableViewCell() }

        let cellType = elements[indexPath.row]

        if cellType == MyCellType.simpleCell {

            return tableView.setUICell(cellType)

        } else if cellType == MyCellType.nibCell {

            return tableView.setUICell(cellType, object: "Cell loaded from nib!")

        }

        return tableView.createCell(cellType)

    }

}
