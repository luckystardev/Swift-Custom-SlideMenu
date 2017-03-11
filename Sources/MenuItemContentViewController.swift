//
// MenuItemContentViewController.swift
//


import UIKit

open class MenuItemContentViewController: UIViewController {
    
    private var menuContainerViewController: MenuContainerViewController {
        return self.parent as! MenuContainerViewController
    }
    
    public func showMenu() {
        menuContainerViewController.showMenu()
    }
}
