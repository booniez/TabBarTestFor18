//
//  FeedViewController.swift
//  TabBarTestFor18
//
//  
//

import UIKit

class FeedViewController: UIViewController {

    init(_ vc: String? = nil) {
        super.init(nibName: nil, bundle: nil)
        setTabBarItem(title: "Home", imageName: "icon-tabbar-home", selectedImageName: "icon-tabbar-home-selected")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        
        let vc = CViewController()
        vc.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(vc, animated: true)
        
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = VC3ViewController()
        vc.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
