//
//  MasterViewController.swift
//  02 home work 2016
//
//  Created by Admin on 31.03.16.
//  Copyright © 2016 Bobrovnikov. All rights reserved.
//

import UIKit
class MasterTableViewController: UITableViewController {
    
    var toDoItems:NSMutableArray = NSMutableArray()
    var dateSettings: DateSettings = DateSettings.ShortStyle
    var objects = [Diary]()
    static var dateType = true

   

    
    
    override func viewDidAppear(animated: Bool) {
        let userDefaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        let toDoItemList:NSMutableArray? = userDefaults.objectForKey("itemList") as? NSMutableArray
        
        if (toDoItemList != nil) {
            toDoItems=toDoItemList!
        }
        
        
        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: Selector("insertNewObject:"))
        self.navigationItem.rightBarButtonItem = addButton
        
        self.tableView.reloadData()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return toDoItems.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cellid", forIndexPath: indexPath) as UITableViewCell
    
        let object = toDoItems[indexPath.row]
        let todoItem :NSDictionary = toDoItems.objectAtIndex(indexPath.row) as! NSDictionary
        cell.textLabel?.text = todoItem.objectForKey("title") as? String
        return cell
    }
    
    
    
    
  
     override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return NO if you do not want the specified item to be editable.
     return true
     }
     
    
    
     // Override to support editing the table view.
     override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
     if editingStyle == .Delete {
      objects.removeAtIndex(indexPath.row)

     // Delete the row from the data source
     tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
     } else if editingStyle == .Insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    
     // Override to support rearranging the table view.
     override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
     
     }
     
    
    // Override to support conditional rearranging of the table view.
     override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        
     // Return NO if you do not want the item to be re-orderable.
     return true
     }
    
    
    
    // MARK: - Navigation
    
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        
        if(segue.identifier == "showDetails"){
        let AddController:AddViewController = segue.destinationViewController as! AddViewController
            AddController.masterTableViewController = self
        let indexPath:NSIndexPath = self.tableView.indexPathForSelectedRow!
                        AddController.todoData = toDoItems.objectAtIndex(indexPath.row) as! NSDictionary
            
            }
    }
    
    
    //MARK: - Actions
    
    
  
    
    
    
    @IBAction func settingsButtonTapped(sender: AnyObject) {
         let navigationController = self.storyboard?.instantiateViewControllerWithIdentifier("settingsNavController") as! UINavigationController
        let settingsController = navigationController.topViewController as! SettingsViewController
        settingsController.modalPresentationStyle = UIModalPresentationStyle.CurrentContext
        settingsController.modalTransitionStyle = UIModalTransitionStyle.CoverVertical
        
        presentViewController(navigationController, animated: true, completion: nil)
    }
    
    //MARK: - Settings Delegate
    
    func didChooseDateSettings(dateSettings: DateSettings?) {
        if let settings = dateSettings {
            self.dateSettings = settings
        }
        self.tableView.reloadData()
    }
    
    
            
            
            
    }
    
    

