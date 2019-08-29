//
//  ViewController.swift
//  weather-with-friends
//
//  Created by Katy Garner on 29/08/2019.
//  Copyright © 2019 Geek Girl Solutions. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var items : [Item] = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: "WeatherCell", bundle: nil), forCellReuseIdentifier: "WeatherCell")
        loadItems()
    }

    func loadItems() {
        buildRandomItems()
    }
    
    func buildRandomItems() {
        let newItem = Item()
        newItem.name = "me"
        newItem.location = "Solihull"
        items.append(newItem)
        
        let newItem2 = Item()
        newItem2.name = "Lucy"
        newItem2.location = "Coventry"
        items.append(newItem2)
        
        let newItem3 = Item()
        newItem3.name = "Amy"
        newItem3.location = "Great Yarmouth"
        items.append(newItem3)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        
        let item =  items[indexPath.row]
        
        cell.name?.text =  item.name
        cell.location?.text = item.location
        cell.celcius?.text = "25 ºC"
        cell.weatherImage?.image = UIImage(named: "sunny")
        
        return cell
    }
    
}

