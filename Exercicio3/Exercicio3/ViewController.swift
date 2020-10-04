//
//  ViewController.swift
//  Exercicio3
//
//  Created by Luciana on 04/10/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionViewCar: UICollectionView!
    
    var arrayCar = [Car]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewCar.delegate = self
        collectionViewCar.dataSource = self
        
        arrayCar.append(Car(name: "Carro1", photo: "car.png"))
        arrayCar.append(Car(name: "Carro2", photo: "car.png"))
        arrayCar.append(Car(name: "Carro3", photo: "car.png"))
        arrayCar.append(Car(name: "Carro4", photo: "car.png"))
        arrayCar.append(Car(name: "Carro5", photo: "car.png"))
        arrayCar.append(Car(name: "Carro6", photo: "car.png"))
        arrayCar.append(Car(name: "Carro7", photo: "car.png"))
        arrayCar.append(Car(name: "Carro8", photo: "car.png"))
        arrayCar.append(Car(name: "Carro9", photo: "car.png"))
        arrayCar.append(Car(name: "Carro10", photo: "car.png"))
    }

}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let car = arrayCar[indexPath.row]
        
        
        if let carView = CarDetailViewController.getCarDetailViewController() {
            carView.car = car
            navigationController?.pushViewController(carView, animated: true)
        }
    }
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCar.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarCollectionCell", for: indexPath) as! CarCollectionCell
        cell.setup(car: arrayCar[indexPath.row])
        return cell
    }
    
}

