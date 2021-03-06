//
//  Section1TableViewController.swift
//  MartinTableView
//
//  Created by Martin Gao on 3/4/15.
//  Copyright (c) 2015 SirioLabs. All rights reserved.
//

import UIKit

class Section1TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        if let cell:MartinTableViewCell = tableView.dequeueReusableCellWithIdentifier("ProgrammaticalIdentidier") as? MartinTableViewCell{
            println("TableView does have this cell. We dont have to init but dequeue is enough!")

            cell.textLabel?.text = "TableView does have this cell. We dont have to init but dequeue is enough!";

            return cell;
        }
        else{
            var cell = MartinTableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "ProgrammaticalIdentidier")
            println("TableView does NOT have this cell yet. We have to init it!")

            cell.textLabel?.text = "TableView does NOT have this cell yet. We have to init it!";

            return cell;
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
