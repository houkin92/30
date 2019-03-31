//
//  ListInfo.swift
//  cell的重用
//
//  Created by 方瑾 on 2019/3/11.
//  Copyright © 2019 方瑾. All rights reserved.
//

import Foundation
struct ListInfo {
    var name : String?
    var country : String?
    var isRed : Bool?
    init(name:String,country:String) {
        self.name = name
        self.country = country
        self.isRed = false
    }
}
