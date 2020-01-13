//
//  City.swift
//  Cities
//
//  Created by mosahaq on 1/13/20.
//  Copyright © 2020 mosahaq. All rights reserved.
//

import UIKit

class City: Codable
{
    var name : String
    var state :  String
    var population : Int
    var image : Data
    
    init(name: String, state: String, population: Int, image: Data)
    {
       self.name = name
       self.state = state
       self.population = population
       self.image = image
    }
}
