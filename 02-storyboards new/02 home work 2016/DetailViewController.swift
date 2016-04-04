//
//  DetailViewController.swift
//  02 home work 2016
//
//  Created by Admin on 31.03.16.
//  Copyright © 2016 Bobrovnikov. All rights reserved.
//

import UIKit

enum Weather: Int {
    case Sunny = 0
    case Rainy = 1
    case Cloudy = 2
}

class DetailViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var segmentedControll: UISegmentedControl!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    
     var detailItem: DiaryEntry?
       var masterViewController: MasterViewController!


    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    func saveTitle(sender: UITextField) {
        detailItem?.title = (titleField?.text)!
        
    }

    func viewDidLoad() {
        super.viewDidLoad()
        
        titleField?.text = detailItem?.title
        textView?.text = detailItem?.text
        }
    
    func textViewDidEndEditing(textView: UITextView) {
        if textView === textView {
            detailItem?.text = textView.text
        }
    }
    
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
    
        


