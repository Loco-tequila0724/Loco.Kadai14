import UIKit

class CustomTableViewCell: UITableViewCell {
    static let cellIdentifier = "MyCell"

    @IBOutlet private weak var checkMarkImageView: UIImageView! {
        didSet {
            checkMarkImageView.tintColor = .orange
        }
    }

    @IBOutlet private weak var fruitsLabel: UILabel!

    func configure(item: CheckItem) {
        if item.isChecked {
            checkMarkImageView.image = UIImage(systemName: "checkmark")
        } else {
            checkMarkImageView.image = nil
        }
        fruitsLabel.text = item.name
    }
}
