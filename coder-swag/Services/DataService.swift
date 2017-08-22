//
//  DataService.swift
//  coder-swag
//
//  Created by Adrian Thomas on 8/22/17.
//  Copyright © 2017 Adrian Thomas. All rights reserved.
//

import Foundation

// a service does things for you.
// a service is a design paradigm. It can perform functions for you or
// provide a service.  You don't own it, you just ask them to do something for you and it is done over and over again.
class DataService {
    // this is a singleton (singleton design pattern. Louis mentioned it)
    // what static does is creates only ONE copy in memory.
    // the caveat is that there is only one copy and it will be there for the entire lifetime of the app.  This will stay unless you manually destroy it in memory somehow. This can waste memory.
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    // it returns an array of type Category
    func getCategories() -> [Category] {
        return categories
    }
}
