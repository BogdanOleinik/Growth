import SwiftUI
import SnapKit
import UIKit

class AddHabitView: RootView {
    
    private let view: UIView = {
        let view = UIView()
        view.backgroundColor = R.color.backgroundDark()
        view.clipsToBounds = true
        view.layer.cornerRadius = 10.0
        
        return view
    }()
    
    let imageHabit: UIImageView = {
        let imageView = UIImageView()
        imageView.image = R.image.smile()
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    let titleHabit: UILabel = {
        let lable = UILabel()
        lable.font = .systemFont(ofSize: 14.0)
        lable.textColor = .lightGray
        lable.numberOfLines = 2
        lable.textAlignment = .center
        
        return lable
    }()
    
    override func setup() {
        super.setup()
        
        addSubview(view)
        addSubview(imageHabit)
        addSubview(titleHabit)

        setupConstraints()
    }
    
    private func setupConstraints() {
        view.snp.makeConstraints { make in
            make.left.top.right.bottom.equalToSuperview()
            make.width.height.equalTo(130.0)
        }
        
        imageHabit.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20.0)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(50.0)
        }
        
        titleHabit.snp.makeConstraints { make in
            make.top.equalTo(imageHabit.snp.bottom).offset(10.0)
            make.left.right.equalToSuperview().inset(18.0)
            make.bottom.equalToSuperview().offset(-10.0)
        }
    }
    
}
