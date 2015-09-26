
import Foundation

class Diary {

    let date = NSDate()
    var title : String
    var tags = [String]()
    var text : String
    
    init (title : String, tags: [String], text: String) {
        self.title = title
        self.tags = tags
        self.text = text
    }
    
    func fullDescription () -> String {
        var result = date.description
        
        if !title.isEmpty {
            result += "\n" + title
        }
        
        if tags.count > 0 {
            result += "\n"
            for i in tags {
                result += "[" + i + "]"
            }
        }
        
        if !text.isEmpty {
            result += "\n" + text
        }
        
        return result
    }

    


}

let a1 = Diary(title: "учу Swift", tags: ["наконецто выходной", "дождливый день", "time to work"], text: "пью вкусный травяной чай с медом в #lviv-coffee-manufacture :)")

a1.fullDescription()

