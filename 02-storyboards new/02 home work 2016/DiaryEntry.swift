//
//  Diary.swift
//  02 home work 2016
//
//  Created by Admin on 31.03.16.
//  Copyright © 2016 Bobrovnikov. All rights reserved.
//

import Foundation

class DiaryEntry {
    var date = NSDate ()
    var title: String
    var text: String
    var weather: Int
    
    init (title: String, text: String, weather: Int) {
        self.title = title
        self.text = text
        self.weather = weather
    }
}


var record1 = DiaryEntry(
title : "today synny spring day",
text : "роблю домашку",
weather : 0)
