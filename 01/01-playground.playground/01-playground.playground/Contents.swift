
import Foundation

class Diary {
    // задаем переменные для (date, title, text, tags)

    let date = NSDate()
    var title : String
    var text : String
    var tags = [String]()

    
    // инициализируем их (подготавливаем экземпляры класса
    init (title : String, text: String, tags: [String]) {
        self.title = title
        self.text = text
        self.tags = tags
    }
    
    func fullDescription () -> String {
        var result = date.description
        
        let formatter = NSDateFormatter()
        formatter.dateFormat = "dd MMMM yyyy"
        
        
        if title.isEmpty {
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





let a1 = Diary(title: "снова учу Swift", text: "все будет хорошо", tags: ["время работать", "весенний день", "пишу код на сфивте"] )

print (a1.fullDescription())



