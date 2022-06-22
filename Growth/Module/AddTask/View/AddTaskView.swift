import UIKit
import SnapKit

class AddTaskView: RootView {
    
    let taskTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .none
        textField.placeholder = "New task"
        textField.font = .systemFont(ofSize: 24.0, weight: .semibold)
        textField.textColor = R.color.textLight()
        
        return textField
    }()
    
    let backButton: UIButton = {
        let button = UIButton()
        let image = UIImage.SymbolConfiguration(pointSize: 30, weight: .semibold, scale: .large)
        button.setImage(UIImage(systemName: "chevron.compact.down", withConfiguration: image), for: .normal)
        button.imageView?.tintColor = R.color.textDark()
        return button
    }()
    
    let saveButton: UIButton = {
        let button = UIButton()
        button.setImage(R.image.plus(), for: .normal)
        button.imageView?.tintColor = .white
        button.backgroundColor = .white
        button.layer.cornerRadius = 55.0
        
        return button
    }()
    
    override func setup() {
        super.setup()
        
        backgroundColor = R.color.backgroundDark()
        
        addSubview(taskTextField)
        addSubview(saveButton)
        addSubview(backButton)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        
        backButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10.0)
            make.centerX.equalToSuperview()
        }
        
        taskTextField.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(30.0)
            make.top.equalToSuperview().offset(70.0)
            make.height.equalTo(50.0)
        }
        
        saveButton.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-20.0)
            make.left.equalTo(taskTextField.snp.right).offset(15.0)
            make.centerY.equalTo(taskTextField.snp.centerY)
            make.size.equalTo(55.0)
        }
    }
}
