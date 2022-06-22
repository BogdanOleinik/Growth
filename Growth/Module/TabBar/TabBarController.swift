import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateTabBar()
        setTabBarAppear()
    }
    
    private func generateTabBar() {
        viewControllers = [
            generateViewController(
                viewController: TaskViewController(),
                title: "Tasks",
                image: UIImage(systemName: "house.fill")),
            generateViewController(
                viewController: HabitViewController(),
                title: "Habits",
                image: UIImage(systemName: "person.fill"))
        ]
    }
    
    private func generateViewController(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        
        return viewController
    }
    
    private func setTabBarAppear() {
        tabBar.backgroundColor = R.color.backgroundLight()
        tabBar.tintColor = R.color.buttonColor()
        tabBar.unselectedItemTintColor = R.color.textDark()
        
    }
}
