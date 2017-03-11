//
// NavigationMenuViewController.swift
//

import UIKit
import InteractiveSideMenu

class NavigationMenuViewController: MenuViewController {

    let kItemsCount = 2
    let kCellReuseIdentifier = "UITableViewCell"
    let cats = ["Smiling Cat", "Surprised Cat"]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.selectRow(at: IndexPath(row: 0, section: 0), animated: false, scrollPosition: UITableViewScrollPosition.none)
    }
}


extension NavigationMenuViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kItemsCount
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: kCellReuseIdentifier, for: indexPath)
        cell.textLabel?.text = cats[indexPath.row]

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DispatchQueue.main.async {
            guard let menuContainerViewController = self.menuContainerViewController else { return }
            menuContainerViewController.selectContentViewController(menuContainerViewController.contentViewControllers[indexPath.row])
            menuContainerViewController.hideMenu()
        }
    }
}
