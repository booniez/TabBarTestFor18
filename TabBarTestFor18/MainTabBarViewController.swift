//
//  MainTabBarViewController.swift
//  TabBarTestFor18
//
//  
//

import UIKit

class MainTabBarViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let navFeed = UINavigationController(rootViewController: FeedViewController())
        if #available(iOS 18.0, *) {
            self.mode = .tabBar
            self.tabs = [
                createTab(title: "Home", image: UIImage(named: "icon-tabbar-home"), identifier: "Home", viewController: navFeed),
                createTab(title: "Map", image: UIImage(named: "icon-tabbar-map"), identifier: "Calendar", viewController: MapViewController()),
            ]
        } else {
            self.viewControllers = [
                navFeed,
                MapViewController(),
            ].compactMap { $0 }
        }
        
        tabBar.isTranslucent = false
        self.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @available(iOS 18.0, *)
    private func createTab(title: String, image: UIImage?, identifier: String, viewController: UIViewController) -> UITab {
        return UITab(title: "",
                     image: image,
                     identifier: identifier) { _ in
            viewController
        }
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
       
        
//        self.tabIndex = self.selectedIndex
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return true
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    override var prefersStatusBarHidden: Bool {
        return false
    }

}

extension UIViewController {
    func setTabBarItem(title: String?, imageName: String, selectedImageName: String, setBadgeColor: Bool? = false) {
        tabBarItem = UITabBarItem(title: nil, image: UIImage(named: imageName), selectedImage: UIImage(named: selectedImageName))
        
//        if traitCollection.userInterfaceIdiom == .phone {
//            tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
//        }
    }
}
