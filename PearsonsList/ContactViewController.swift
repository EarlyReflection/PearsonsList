//
//  DetailViewController.swift
//  PearsonsList
//
//  Created by Vladimir Dvornikov on 18.05.2022.
//

import UIKit

class ContactViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        //скейл заголовка в навигейшн баре
        UILabel.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).adjustsFontSizeToFitWidth = true
        
        title = person.fullName
        phoneNumberLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
        
    }
}
