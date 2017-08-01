//
//  TableTableViewController.swift
//  Exam1
//
//  Created by Mobio on 5/25/17.
//  Copyright © 2017 Mobio. All rights reserved.
//

import UIKit

class TableTableViewController: UITableViewController, UINavigationBarDelegate
 {

    var names = [String]()
    var university = [String]()
    var department = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        names = ["Refat","Sium","Araf","Sahed","Shaikat","Suman","Pranoy","Hillol","Nazmul","Sabin"]
        university = ["Mbstu","Mbstu","Brac","Brac","Mbstu","Mbstu","JU","Aiub","Iubat","Mbstu"]
        department=["cse","ict","Textile","eee","Pharmacy","cse","ict","Textile","eee","Pharmacy"]
        
        
        
               
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }

     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ListTableViewCell
        cell.nameInfo?.text = names[indexPath.row]
        cell.deptInfo?.text = department[indexPath.row]
        cell.uniInfo?.text = university[indexPath.row]
        
        
        
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
         dismiss(animated: true, completion: nil)
    }
    
    

}
