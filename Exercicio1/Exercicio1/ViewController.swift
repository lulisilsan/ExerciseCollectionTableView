//
//  ViewController.swift
//  Exercicio1
//
//  Created by Luciana on 02/10/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableViewPeople: UITableView!
    var arrayPeople = [People]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewPeople.delegate = self
        tableViewPeople.dataSource = self
        
        
        arrayPeople.append(People(name: "Luciana", role: "Developer", email: "luciana@email.com.br"))
        arrayPeople.append(People(name: "Gustavo", role: "Developer", email: "gustavo@email.com.br"))
        arrayPeople.append(People(name: "Patricia", role: "Analyst Financial", email: "patricia@email.com.br"))
        arrayPeople.append(People(name: "Renato", role: "Security Information", email: "renato@email.com.br"))
        arrayPeople.append(People(name: "Sonia", role: "Manager", email: "sonia@email.com.br"))
        arrayPeople.append(People(name: "Jorge", role: "Manager", email: "jorge@email.com"))
        arrayPeople.append(People(name: "Amanda", role: "Analyst Risk", email: "amanda@email.com.br"))
        arrayPeople.append(People(name: "Victor", role: "Teach Lead", email: "victor@email.com.br"))
        arrayPeople.append(People(name: "Fabiana", role: "Analyst Data", email: "fabiana@email.com.br"))
        arrayPeople.append(People(name: "Lee", role: "Developer", email: "lee@email.com.br"))
        arrayPeople.append(People(name: "Guilherme", role: "Developer", email: "guilherme@email.com.br"))
        arrayPeople.append(People(name: "Jonas", role: "Developer", email: "jonas@email.com.br"))
        arrayPeople.append(People(name: "Leandro", role: "Service Desk", email: "leandro@email.com.br"))
        arrayPeople.append(People(name: "Cristina", role: "Humam Resources", email: "cristina@email.com.br"))
        arrayPeople.append(People(name: "Daniel", role: "TI Manager", email: "daniel@email.com"))
        
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let people = arrayPeople[indexPath.row]
        if let peopleView = PeopleDetailViewController.getPeopleDetailViewController(){
            peopleView.people = people
            present(peopleView, animated: true, completion: nil)
        }
    }
    
}
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPeople.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PeopleCustomCell", for: indexPath) as! PeopleCustomCell
        cell.setup(people: arrayPeople[indexPath.row])
        return cell
    }
    
}

