//
//  AnimalsCustomCell.swift
//  Exercicio2
//
//  Created by Luciana on 02/10/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class AnimalsCustomCell: UITableViewCell {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelBreed: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    @IBOutlet weak var labelSpecie: UILabel!
    
    func setup(animal: Animals) {
        labelName.text = animal.name
        labelBreed.text = animal.breed
        labelWeight.text = String(animal.weight)
        labelSpecie.text = animal.species
    }
    
    func getAnimalsDetailViewController () -> AnimalsDetailViewController? {
        if let animalView = UIStoryboard(name: "AnimalsDetailStoryboard", bundle: nil).instantiateInitialViewController() as? AnimalsDetailViewController {
            return animalView
        }
        return nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
