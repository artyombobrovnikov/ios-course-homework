//
//  SettingsViewController.swift
//  02 home work 2016
//
//  Created by Admin on 11.04.16.
//  Copyright © 2016 Bobrovnikov. All rights reserved.
//

import UIKit

enum DateSettings: Int {
    case ShortStyle = 0
    case LongStyle
}

class SettingsViewController: UITableViewController {
    
    var currentDateSettings: DateSettings?
    var settingsDelegate: SettingsDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.currentDateSettings = DateSettings(rawValue: indexPath.row)
    }
    
    @IBAction func doneButtonClicked(sender: AnyObject) {
        if let settingsDelegate = self.settingsDelegate {
            settingsDelegate.didChooseDateSettings(self.currentDateSettings)
        }
        
        NSUserDefaults.standardUserDefaults().setInteger(self.currentDateSettings!.rawValue, forKey: "dateSettings")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}
