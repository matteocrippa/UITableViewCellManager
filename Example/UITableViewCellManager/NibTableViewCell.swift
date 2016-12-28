//
//  NibTableViewCell.swift
//  UITableViewCellManager
//
//  Created by Alex Corlatti on 30/06/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import UIKit

class NibTableViewCell: UITableViewCell {

    @IBOutlet weak var infoLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func setUI(_ object: Any?) {
        
        guard let text = object as? String else { return }
     
        infoLabel.text = text
        
    }

}
