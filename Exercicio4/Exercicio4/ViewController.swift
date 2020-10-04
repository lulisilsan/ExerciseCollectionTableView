//
//  ViewController.swift
//  Exercicio4
//
//  Created by Luciana on 04/10/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionViewNames: UICollectionView!
    
    var arrayNames = [Name]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewNames.delegate = self
        collectionViewNames.dataSource = self
        
        arrayNames.append(Name(name: "Luciana"))
        arrayNames.append(Name(name: "Gustavo"))
        arrayNames.append(Name(name: "Jéssica"))
        arrayNames.append(Name(name: "Narlei"))
        arrayNames.append(Name(name: "Fernanda"))
        arrayNames.append(Name(name: "Marcela"))
        arrayNames.append(Name(name: "Mauro"))
        arrayNames.append(Name(name: "Patricia"))
        arrayNames.append(Name(name: "Renato"))
        arrayNames.append(Name(name: "Guilherme"))
        arrayNames.append(Name(name: "Sônia"))
        arrayNames.append(Name(name: "Jorge"))
        arrayNames.append(Name(name: "Fabiana"))
        arrayNames.append(Name(name: "Camile"))
        arrayNames.append(Name(name: "Cristina"))
        arrayNames.append(Name(name: "Daniel"))
        arrayNames.append(Name(name: "Jonas"))
        arrayNames.append(Name(name: "Lee"))
        arrayNames.append(Name(name: "Victor"))
        arrayNames.append(Name(name: "Ariane"))
        
    }

}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.indexPathsForSelectedItems
        arrayNames.remove(at: indexPath.row)
        collectionViewNames.deleteItems(at: cell!)
        collectionViewNames.reloadData()
    }
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NameCollectionCell", for: indexPath) as! NameCollectionCell
        cell.setup(name: arrayNames[indexPath.row])
        return cell
    }
    
}

