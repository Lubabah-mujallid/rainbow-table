
import UIKit

class ViewController: UIViewController {
    let colors = [UIColor.red, UIColor.blue, UIColor.green, UIColor.magenta, UIColor.orange, UIColor.init(red: 0.9, green: 0.2, blue: 0.5, alpha: 1), UIColor(named: "MySpecialColor")]
    @IBOutlet weak var tblev: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblev.dataSource = self
        tblev.delegate = self
        tblev.estimatedRowHeight = 120
        tblev.rowHeight = UITableView.automaticDimension
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.contentView.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    
}
