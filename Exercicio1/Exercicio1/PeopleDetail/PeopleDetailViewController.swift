//
//  PeopleDetailViewController.swift
//  Exercicio1
//
//  Created by Luciana on 02/10/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class PeopleDetailViewController: UIViewController {
    
    @IBOutlet weak var labelName: UILabel!
    
    @IBAction func actionButtonClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    var people: People?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let people = people {
            labelName.text = people.name
        }
    }
    
    static func getPeopleDetailViewController() -> PeopleDetailViewController? {
        if let peopleView = UIStoryboard(name: "PeopleDetailStoryboard", bundle: nil).instantiateInitialViewController() as? PeopleDetailViewController {
            return peopleView
        }
       return nil
    }
}
