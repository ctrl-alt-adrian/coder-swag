//
//  Category.swift
//  coder-swag
//
//  Created by Adrian Thomas on 8/22/17.
//  Copyright © 2017 Adrian Thomas. All rights reserved.
//

import Foundation

struct Category {
    // private(set) means you can no longer set this via other classes.
    // This protects your data.
    // You want public variables that can be set but not fetched by outside classes.
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
