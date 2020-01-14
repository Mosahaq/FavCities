//
//  DetailViewController.swift
//  Cities
//
//  Created by mosahaq on 1/13/20.
//  Copyright © 2020 mosahaq. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController
{
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var populationTextField: UITextField!
    @IBOutlet var imageView: UIView!
    
    var detailItem: City?
    {
        didSet
        {
            configureView()
        }
    }

    func configureView()
    {
       // Update the user interface for the detail item
       if let city = self.detailItem
       {
          if cityTextField != nil
          {
             cityTextField.text = city.name
             stateTextField.text = city.state
             populationTextField.text = String(city.population)
             imageView.image = UIImage(data: city.image)
          }
       }
    }
    
    func viewWillDissapear()
    {
        if let city = self.detailItem
        {
           city.name = cityTextField.text!
           city.state = stateTextField.text!
           city.population = Int(populationTextField.text!)!
        }
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

}

