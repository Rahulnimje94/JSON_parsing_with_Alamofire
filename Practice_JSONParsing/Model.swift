//
//  Model.swift
//  Practice_JSONParsing
//
//  Created by Anand on 01/02/18.
//  Copyright © 2018 Rahul. All rights reserved.
//

import Foundation

struct DataModel {
    
    var userId: String
    var id: String
    var title: String
    var body: String
    
    init( _ json: [String: Any]) {
        self.userId = json["userId"] as? String ?? ""
        self.id = json["id"] as? String ?? ""
        self.title = json["title"] as? String ?? ""
        self.body = json["body"] as? String ?? ""
    }

    
}
