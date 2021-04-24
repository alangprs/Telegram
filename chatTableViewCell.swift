//
//  chatTableViewCell.swift
//  Telegram
//
//  Created by 翁燮羽 on 2021/4/21.
//

import UIKit

class chatTableViewCell: UITableViewCell {
    //cell 頭像照片
    @IBOutlet weak var chatImageView: UIImageView!
    //label資料顯示區
    @IBOutlet var chatList: [UILabel]!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
