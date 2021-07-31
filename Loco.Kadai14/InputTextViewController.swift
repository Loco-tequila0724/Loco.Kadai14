import UIKit

protocol InputTextDelegate: AnyObject {
    func saveTextAndReturn(fruitsName: String)
}

class InputTextViewController: UIViewController {
    @IBOutlet weak private var inputTextField: UITextField!

    weak var delegate: InputTextDelegate?

    private var fruitsName = ""

    private func alert(message: String) {
        let alert = UIAlertController(
            title: "警告",
            message: message,
            preferredStyle: .alert
        )

        alert.addAction(
            UIAlertAction(
                title: "OK",
                style: .default,
                handler: nil)
        )
        present(alert, animated: true, completion: nil)
    }

    @IBAction private func saveTextButton(_ sender: Any) {
        guard inputTextField.text != "" else {
            return alert(message: "テキストを入力願います。")
        }

        guard let inputText = inputTextField.text else { return }

        fruitsName = inputText
        delegate?.saveTextAndReturn(fruitsName: fruitsName)
    }
}
