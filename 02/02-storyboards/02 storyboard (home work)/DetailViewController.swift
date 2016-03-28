//
//  DetailViewController.swift
//  02 storyboard (home work)
//
//  Created by Artyom Bobrovnikov on 03.10.15.
//  Copyright © 2015 Artyom Bobrovnikov. All rights reserved.
//

import UIKit

enum WeatherSwitcher: Int {
    case Sunny = 0
    case Rainy = 1
    case Cloudy = 2
}

class DetailViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var titleField: UITextField?
    @IBOutlet weak var textView: UITextView?
    @IBOutlet weak var WeatherSwitcher: UISegmentedControl!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBAction func saveWeather(sender: AnyObject) {
      
    }

    @IBAction func saveTitle(sender: UITextField) {
        detailItem?.title = (titleField?.text)!
    
    }
    var detailItem: Diary?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleField?.text = detailItem?.title
        textView?.text = detailItem?.text
        WeatherSwitcher.selectedSegmentIndex = WeatherSwitcher.selectedSegmentIndex
        textView?.delegate = self

    }

    func textViewDidEndEditing(textView: UITextView) {
        if textView === textView {
            detailItem?.text = textView.text
        }
        
        
        
        //background settings
        
        func viewDidLoad() {
            super.viewDidLoad()
    }

        
        func setBackgroundImageAndText(index: Int) {
            if index == 0 {
                self.titleField!.textColor = UIColor.blueColor()
                self.textView!.textColor = UIColor.blueColor()
                self.WeatherSwitcher.tintColor = UIColor.blueColor()
                self.backgroundImageView.image = UIImage(named: "bg-sunny")
            }else if index == 1 {
                self.titleField!.textColor = UIColor.blackColor()
                self.textView!.textColor = UIColor.blackColor()
                self.WeatherSwitcher.tintColor = UIColor.blackColor()
                self.backgroundImageView.image = UIImage(named: "bg-rainy")
            }else if index == 2 {
                self.titleField!.textColor = UIColor.whiteColor()
                self.textView!.textColor = UIColor.whiteColor()
                self.WeatherSwitcher.tintColor = UIColor.whiteColor()
                self.backgroundImageView.image = UIImage(named: "bg-cloudy")
            }
        }
        
        //MARK: - Actions
        
       
      //  func segmentControllChangedValue(sender: AnyObject) {
      // self.setBackgroundImageAndText(self.WeatherSwitcher.selectedSegmentIndex)

     }
        
   }
