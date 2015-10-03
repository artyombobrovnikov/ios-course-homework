//
//  Diary.swift
//  02 storyboard (home work)
//
//  Created by Artyom Bobrovnikov on 03.10.15.
//  Copyright © 2015 Artyom Bobrovnikov. All rights reserved.
//

import Foundation

class Diary {
    var date = NSDate()
    var title: String
    var text: String
    var mood: Int
    
    init (title: String, text: String, mood: Int ) {
        self.title = title
        self.text = text
        self.mood = mood
    }
}
