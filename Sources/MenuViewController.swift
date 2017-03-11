//
// MenuViewController.swift
//


import UIKit

open class MenuViewController: UIViewController {
    
    public weak var menuContainerViewController: MenuContainerViewController?
    var navigationMenuTransitionDelegate: MenuTransitioningDelegate!
        
    func handleTap(recognizer: UIGestureRecognizer){
        menuContainerViewController?.hideMenu()
    }
}

