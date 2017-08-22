//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Adrian Thomas on 8/22/17.
//  Copyright © 2017 Adrian Thomas. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
}
