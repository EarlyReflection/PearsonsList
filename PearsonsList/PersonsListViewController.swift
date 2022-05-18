//
//  PersonsListViewController.swift
//  PearsonsList
//
//  Created by Vladimir Dvornikov on 16.05.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    private let persons = Person.getPersons()
    
    override func viewDidLoad() {
        
        guard let tabBar = tabBarController else {return}
        guard let viewControllers = tabBar.viewControllers else {return}
        
        for viewController in viewControllers {
            if let detailVC = viewController as? DetailTableViewController {
                detailVC.persons = persons
            }
        }
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactVC = segue.destination as? ContactViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let person = persons[indexPath.row]
        contactVC.person = person
    }
}
