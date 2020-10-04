//
//  PeopleCustomCell.swift
//  Exercicio1
//
//  Created by Luciana on 02/10/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class PeopleCustomCell: UITableViewCell {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelRole: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    
    
    func setup (people: People) {
        labelName.text = people.name
        labelRole.text = people.role
        labelEmail.text = people.email
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
