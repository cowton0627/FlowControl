//
//  ThirdTableViewCell.swift
//  FlowControl
//
//  Created by Chun-Li Cheng on 2021/12/6.
//

import UIKit

class ThirdTableViewCell: UITableViewCell {
    @IBOutlet weak var middleNameLabel: UILabel!
    @IBOutlet weak var zodiacLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupCell(model: Model) {
        middleNameLabel.text = model.middleName
        zodiacLabel.text = model.zodiac
    }

}
