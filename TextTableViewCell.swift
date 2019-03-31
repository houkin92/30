//
//  TextTableViewCell.swift
//  cell的重用
//
//  Created by 方瑾 on 2019/3/11.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

class TextTableViewCell: UITableViewCell {
    
    @IBOutlet weak var foxLabel: UILabel!
    
    @IBOutlet weak var faxLabel: UILabel!
    @IBOutlet weak var changeButton: UIButton!
    
    var row : Int?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        
    }
//    @IBAction func goButton(_ sender: UIButton) {
//        self.contentView.backgroundColor = .red
//        testInfo[row!].isRed = true
//    }
    
}
