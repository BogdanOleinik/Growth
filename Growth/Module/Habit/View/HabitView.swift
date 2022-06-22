import UIKit
import SnapKit

class HabitView: RootView {
    
    private let goodHabitView: AddHabitView = {
        let view = AddHabitView()
        view.titleHabit.text = "Develop good habits"
        
        
        return view
    }()
    
    private let badHabitView: AddHabitView = {
        let view = AddHabitView()
        view.titleHabit.text = "Develop good habits"
        
        
        return view
    }()
    
    private let backgroundView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 24.0
        
        return view
    }()
    
    private let collectionView: UICollectionView = {
        let view = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        view.contentInset = UIEdgeInsets(top: 24.0, left: 30.0, bottom: 0, right: -30.0)
        view.alwaysBounceVertical = true
        view.backgroundColor = R.color.backgroundDark()
        view.layer.cornerRadius = 24.0
        
        return view
    }()
    
    private lazy var habitsStack = UIStackView(views: [
        goodHabitView,
        badHabitView
    ], axis: .horizontal, spacing: 30.0, alignment: .center, distribution: .equalSpacing)
    
    override func setup() {
        super.setup()
        
        backgroundColor = R.color.backgroundLight()
        
        addSubview(habitsStack)
        addSubview(backgroundView)
        backgroundView.addSubview(collectionView)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        habitsStack.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(15.0)
            make.centerX.equalToSuperview()
        }
        
        backgroundView.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(160.0)
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        collectionView.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }
    }
    
}
