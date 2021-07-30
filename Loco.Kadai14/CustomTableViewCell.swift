import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet private weak var checkMarkImageView: UIImageView!
    @IBOutlet private weak var fruitsLabel: UILabel!

    func configure(item: CheckItem) {
        if item.isChecked == true {
            checkMarkImageView.image = UIImage(systemName: "checkmark")
        } else {
            checkMarkImageView.image = nil
        }
        checkMarkImageView.tintColor = .orange
        fruitsLabel.text = item.name
    }
}
