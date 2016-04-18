//
//  DetailViewController.swift
//  02 home work 2016
//
//  Created by Admin on 11.04.16.
//  Copyright © 2016 Bobrovnikov. All rights reserved.
//

import UIKit

enum Weather: Int {
    case Sunny = 0
    case Rainy = 1
    case Cloudy = 2
}

class AddViewController: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var segmentedControll: UISegmentedControl!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    var todoData:NSDictionary = NSDictionary()
    var masterTableViewController: MasterTableViewController!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonTapped(sender: AnyObject) {
    
   
    
        let userdefaults:NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        var itemList:NSMutableArray? = userdefaults.objectForKey("itemList") as?NSMutableArray
        
        let dataSet:NSMutableDictionary = NSMutableDictionary()
        dataSet.setObject(titleField.text!, forKey: "title")
        dataSet.setObject(textView.text, forKey: "details")
      
        
        
        if((itemList) != nil){  // проверяем доступны ли данные
            
            let newMutableList: NSMutableArray = NSMutableArray()
            
            for dict:AnyObject in itemList!{
                newMutableList.addObject(dict as! NSDictionary)
            }
            
            userdefaults.removeObjectForKey("itemList")
            newMutableList.addObject(dataSet)
            userdefaults.setObject(newMutableList, forKey: "itemList")
            
        }else{
            //userdefaults.removeObjectForKey("itemList")
            itemList=NSMutableArray()
            itemList!.addObject(dataSet)
            userdefaults.setObject(itemList, forKey: "itemList")
            
        }
        
        userdefaults.synchronize()
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
  

       func setBackgroundImageAndText(index: Int) {
            if index == 0 {
                self.titleField.textColor = UIColor.blueColor()
                self.textView.textColor = UIColor.blueColor()
                self.segmentedControll.tintColor = UIColor.blueColor()
                self.backgroundImageView.image = UIImage(named: "bg-sunny")
            }else if index == 1 {
                self.titleField.textColor = UIColor.blackColor()
                self.textView.textColor = UIColor.blackColor()
                self.segmentedControll.tintColor = UIColor.blackColor()
                self.backgroundImageView.image = UIImage(named: "bg-rainy")
            }else if index == 2 {
                self.titleField.textColor = UIColor.blackColor()
                self.textView.textColor = UIColor.blackColor()
                self.segmentedControll.tintColor = UIColor.whiteColor()
                self.backgroundImageView.image = UIImage(named: "bg-cloudy")
        }
        
        
    }
    
    
       //MARK: - Actions
    
    @IBAction func SegmentedControllChangedValue(sender: AnyObject) {
        
    self.setBackgroundImageAndText(self.segmentedControll.selectedSegmentIndex)
        
        
    }

   
   
}
    
        


