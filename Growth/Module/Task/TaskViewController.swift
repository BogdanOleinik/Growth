import UIKit

class TaskViewController: ViewController<TaskView> {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.addButton.addTarget(self, action: #selector(addButtonPressed), for: .touchUpInside)
    }
    
    @objc private func addButtonPressed() {
        let addTaskVC = AddTaskViewController()
        present(addTaskVC, animated: true)
    }
    
}
