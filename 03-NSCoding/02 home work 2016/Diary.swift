//
//  Diary.swift
//  02 home work 2016
//
//  Created by Admin on 11.04.16.
//  Copyright © 2016 Bobrovnikov. All rights reserved.
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
