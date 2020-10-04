//
//  CarCollectionCell.swift
//  Exercicio3
//
//  Created by Luciana on 04/10/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class CarCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var labelNameCar: UILabel!
    @IBOutlet weak var imageCar: UIImageView!
    
    func setup(car: Car) {
        labelNameCar.text = car.name
        imageCar.image = UIImage(named: car.photo)
        
        //Cutomização da foto do carro:
        imageCar.layer.borderWidth = 2
        imageCar.layer.masksToBounds = false
        imageCar.layer.borderColor = UIColor.black.cgColor
        imageCar.layer.cornerRadius = imageCar.frame.height/2
        imageCar.clipsToBounds = true
        
    }
    
}
