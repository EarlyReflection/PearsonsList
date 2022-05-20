//
//  TabBarViewController.swift
//  PearsonsList
//
//  Created by Vladimir Dvornikov on 20.05.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        sendingData()
    }
    
    private func sendingData() {
        let persons = Person.getPersons()
        
        let personsListVC = viewControllers?.first as! PersonsListViewController
        personsListVC.persons = persons
        
        let detailVC = viewControllers?.last as! DetailTableViewController
        detailVC.persons = persons
    }
}
