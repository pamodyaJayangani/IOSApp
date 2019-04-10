//
//  TemperatureTableViewController.swift
//  IOSApp
//
//  Created by fortude on 4/2/19.
//  Copyright © 2019 PamodyaD. All rights reserved.
//

import UIKit

class TemperatureTableViewController: UITableViewController {

    let cellName:String = "LabelCell";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: self.cellName)

    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (UserDefaults.standard.array(forKey: "tempArr")?.count)!
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cellName, for: indexPath)
        cell.textLabel?.lineBreakMode = .byWordWrapping
        cell.textLabel?.numberOfLines = 2
        cell.textLabel?.text = UserDefaults.standard.array(forKey: "tempArr")?[indexPath.row] as! String

        return cell
    }

}
