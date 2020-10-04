//
//  ViewController.swift
//  Exercicio2
//
//  Created by Luciana on 02/10/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableViewAnimals: UITableView!
    
    var arrayAnimals = [Animals]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewAnimals.delegate = self
        tableViewAnimals.dataSource = self
        
        arrayAnimals.append(Animals(name: "Totó", breed: "Vira-Lata", weight: 2.0, species: "Canis lupus familiaris"))
        arrayAnimals.append(Animals(name: "Rintintim", breed: "Cocker", weight: 2.5, species: "Canis lupus familiaris"))
        arrayAnimals.append(Animals(name: "Lobinho", breed: "Pastor Alemão", weight: 5.6, species: "Canis lupus familiaris"))
        arrayAnimals.append(Animals(name: "Laica", breed: "Lessie", weight: 5.0, species: "Canis lupus familiaris"))
        arrayAnimals.append(Animals(name: "Snow", breed: "Golden Retriever", weight: 6.0, species: "Canis lupus familiaris"))
        arrayAnimals.append(Animals(name: "Lady", breed: "Pointer Inglês", weight: 8.0, species: "Canis lupus familiaris"))
        arrayAnimals.append(Animals(name: "Pantera", breed: "Samoieda", weight: 5.7, species: "Canis lupus familiaris"))
        arrayAnimals.append(Animals(name: "Milú", breed: "Shar-pei", weight: 3.0, species: "Canis lupus familiaris"))
        arrayAnimals.append(Animals(name: "Costelinha", breed: "Border Collie", weight: 6.9, species: "Canis lupus familiaris"))
        arrayAnimals.append(Animals(name: "Thor", breed: "Bulldog Francês", weight: 4.0, species: "Canis lupus familiaris"))
        
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let animal = arrayAnimals[indexPath.row]
        
        if let animalView = AnimalsDetailViewController.getAnimalsDetailViewController() {
            animalView.animal = animal
            present(animalView, animated: true, completion: nil)
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayAnimals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalsCustomCell", for: indexPath) as! AnimalsCustomCell
        cell.setup(animal: arrayAnimals[indexPath.row])
        return cell
    }
}


