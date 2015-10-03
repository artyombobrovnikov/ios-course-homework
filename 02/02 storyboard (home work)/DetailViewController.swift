//
//  DetailViewController.swift
//  02 storyboard (home work)
//
//  Created by Artyom Bobrovnikov on 03.10.15.
//  Copyright © 2015 Artyom Bobrovnikov. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var titleRecord: UITextField?
    @IBOutlet weak var textRecord: UITextView?
    @IBOutlet weak var moodSwitcher: UISegmentedControl!
    @IBAction func saveMood(sender: AnyObject) {
        detailItem?.mood = moodSwitcher.selectedSegmentIndex
    }

    @IBAction func saveTitle(sender: UITextField) {
        detailItem?.title = (titleRecord?.text)!
    
    }
    var detailItem: Diary?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleRecord?.text = detailItem?.title
        textRecord?.text = detailItem?.text
        moodSwitcher.selectedSegmentIndex = (detailItem?.mood)!
        
        textRecord?.delegate = self

    }

    func textViewDidEndEditing(textView: UITextView) {
        if textView === textRecord {
            detailItem?.text = textView.text
        }
    }

}

