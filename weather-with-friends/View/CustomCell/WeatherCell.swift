//
//  weatherCell.swift
//  weather-with-friends
//
//  Created by Katy Garner on 29/08/2019.
//  Copyright © 2019 Geek Girl Solutions. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet var name: UILabel!
    @IBOutlet var location: UILabel!
    @IBOutlet var celcius: UILabel!
    @IBOutlet var weatherImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
