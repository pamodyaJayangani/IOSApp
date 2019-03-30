//
//  FirstTableViewController.swift
//  IOSApp
//
//  Created by fortude on 3/30/19.
//  Copyright © 2019 PamodyaD. All rights reserved.
//

import UIKit


struct Headline {
    
    var kg : String
    var grams : String
    var ounces : String
    var pounds : String
    var stones : String
    
}

class FirstTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.cellForRow(at: )
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "saved01")
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    
    
    
    var headlines = [
        Headline(kg: "kg", grams: "gram", ounces: "ounce", pounds: "pounds", stones: "stones"),
//        Headline(kg: "String", grams: "", ounces: "<#T##String#>", pounds: "String", stones: ""),
//        Headline(kg: "1", grams: "2", ounces: "3", pounds: "4", stones: "5")
        ]

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "saved01", for: indexPath)

        cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"
         cell.textLabel?.text = headlines[indexPath.row].kg
//         cell.textLabel?.text = "headlines[indexPath.row].kg"
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
