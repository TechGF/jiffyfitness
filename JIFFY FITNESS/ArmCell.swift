//
//  ArmCell.swift
//  JIFFY FITNESS
//
//  Created by Gary Feng on 12/6/20.
//  Copyright © 2020 JIFFY FITNESS. All rights reserved.
//

import UIKit

class ArmCell: UITableViewCell {

    @IBOutlet weak var photoView: UIImageView!
    
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
