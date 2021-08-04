import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet private weak var checkMarkImageView: UIImageView! {
        didSet {
            checkMarkImageView.tintColor = .orange
        }
    }

    @IBOutlet private weak var fruitsLabel: UILabel!

    static let cellIdentifier = "MyCell"

    func configure(item: CheckItem) {
        if item.isChecked {
            checkMarkImageView.image = UIImage(systemName: "checkmark")
        } else {
            checkMarkImageView.image = nil
        }
        fruitsLabel.text = item.name
    }
}
