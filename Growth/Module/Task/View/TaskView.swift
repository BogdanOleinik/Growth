import UIKit
import SnapKit

class TaskView: RootView {
    
    private let backgroundView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 24.0
        
        return view
    }()
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.description())
        tableView.backgroundColor = R.color.backgroundDark()
        tableView.layer.cornerRadius = 24.0
        
        return tableView
    }()
    
    let addButton: UIButton = {
        let button = UIButton()
        button.setImage(R.image.plus(), for: .normal)
        button.imageView?.tintColor = .white
        button.backgroundColor = .white
        button.layer.cornerRadius = 70.0
        
        return button
    }()

    override func setup() {
        super.setup()
        
        backgroundColor = R.color.backgroundLight()

        addSubview(backgroundView)
        backgroundView.addSubview(tableView)
        backgroundView.addSubview(addButton)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        backgroundView.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(160.0)
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        tableView.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }
        
        addButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-20.0)
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-20.0)
            make.size.equalTo(70.0)
        }
    }
}

