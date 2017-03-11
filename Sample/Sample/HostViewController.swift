//
// HostViewController.swift
//


import UIKit
import InteractiveSideMenu

class HostViewController: MenuContainerViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        menuViewController = self.storyboard!.instantiateViewController(withIdentifier: "NavigationMenu") as! MenuViewController
        
        contentViewControllers = contentControllers()
        
        selectContentViewController(contentViewControllers.first!)
    }
    
    override func menuTransitionOptionsBuilder() -> TransitionOptionsBuilder? {
        return TransitionOptionsBuilder() { builder in
            builder.duration = 0.5
            builder.contentScale = 1
        }
    }
    
    private func contentControllers() -> [MenuItemContentViewController] {
        var contentList = [MenuItemContentViewController]()
        contentList.append(self.storyboard?.instantiateViewController(withIdentifier: "First") as! MenuItemContentViewController)
        contentList.append(self.storyboard?.instantiateViewController(withIdentifier: "Second") as! MenuItemContentViewController)
        return contentList
    }
}
