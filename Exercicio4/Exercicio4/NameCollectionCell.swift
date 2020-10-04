//
//  NameCollectionCell.swift
//  Exercicio4
//
//  Created by Luciana on 04/10/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class NameCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var labelName: UILabel!
    
    func setup(name: Name) {
        labelName.text = name.name
    }
    
}
