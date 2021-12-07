//
//  MyTableViewCell.swift
//  FlowControl
//
//  Created by Chun-Li Cheng on 2021/12/6.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupCell(model: Model) {
        userNameLabel.text = model.name
        ageLabel.text = "\(model.age)"
    }

}
