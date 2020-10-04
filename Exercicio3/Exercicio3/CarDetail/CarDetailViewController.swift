//
//  CarDetailViewController.swift
//  Exercicio3
//
//  Created by Luciana on 04/10/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class CarDetailViewController: UIViewController {
    
    @IBOutlet weak var imageCar: UIImageView!
    
    var car: Car?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Photo Car"
        if let car = car {
            imageCar.image = UIImage(named: car.photo)
        }

        
    }
    static func getCarDetailViewController () -> CarDetailViewController? {
       if let carView = UIStoryboard(name: "CarDetailStoryboard", bundle: nil).instantiateInitialViewController() as? CarDetailViewController {
           return carView
       }
       return nil
    }
 
}
