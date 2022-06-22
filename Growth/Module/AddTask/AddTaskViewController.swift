import UIKit

class AddTaskViewController: ViewController<AddTaskView> {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.saveButton.addTarget(self, action: #selector(saveButtonPressed), for: .touchUpInside)
    }
    
    @objc private func saveButtonPressed() {
        dismiss(animated: true)
    }
    
}
