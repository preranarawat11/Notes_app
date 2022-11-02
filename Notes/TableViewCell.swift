//
//  TableViewCell.swift
//  Notes
//
//  Created by Prerana on 01/11/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var flag: UIImageView!
    @IBOutlet weak var countryDetail: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
