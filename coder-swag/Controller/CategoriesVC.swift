//
//  ViewController.swift
//  coder-swag
//
//  Created by Adrian Thomas on 8/22/17.
//  Copyright © 2017 Adrian Thomas. All rights reserved.
//

import UIKit
// DataSource and Delegate are based off objective-c code but are now called protocols in Swift
class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            // you want your views to manage themselves.
            // don't manipulate your cells in your tablerow indexpath
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
    
}

