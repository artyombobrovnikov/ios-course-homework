import UIKit

class Settings: UITableViewController {
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
    }
    

    
    // MARK: - Table View
    

    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            MasterViewController.dateType = true
        }
        if indexPath.row == 1 {
            MasterViewController.dateType = false
        }
        tableView.reloadData()
    }
    
}
