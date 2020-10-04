//
//  AnimalsDetailViewController.swift
//  Exercicio2
//
//  Created by Luciana on 02/10/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class AnimalsDetailViewController: UIViewController {
    
    @IBOutlet weak var labelName: UILabel!
    @IBAction func actionButtonClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    var animal: Animals?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let animal = animal {
            labelName.text = animal.name
        }
    }
    
    static func getAnimalsDetailViewController() -> AnimalsDetailViewController? {
        if let animalView = UIStoryboard(name: "AnimalsDetailStoryboard", bundle: nil).instantiateInitialViewController() as? AnimalsDetailViewController {
            return animalView
        }
        return nil
    }

}
