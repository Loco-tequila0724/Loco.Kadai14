import UIKit

struct CheckItem {
    var name: String
    var isChecked: Bool
}

class ViewController: UIViewController {
    @IBOutlet private weak var tableView: UITableView!

    private var checkItems: [CheckItem] {
        [
            CheckItem(name: "りんご", isChecked: false),
            CheckItem(name: "みかん", isChecked: true),
            CheckItem(name: "バナナ", isChecked: false),
            CheckItem(name: "パイナップル", isChecked: true)
        ]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    var cellIdentifier: String { "MyCell" }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        checkItems.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? CustomTableViewCell

        cell?.configure(item: checkItems[indexPath.row])
        return cell!
    }
}
