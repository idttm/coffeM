//
//  ViewController.swift
//  coffeeM
//
//  Created by Andrew Cheberyako on 16.07.2020.
//  Copyright © 2020 Andrew Cheberyako. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var coffeeMachin = ClassСoffe()
    
    @IBOutlet weak var readyCoffeeView: UILabel!
    @IBOutlet weak var informationView: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        informationView.text = coffeeMachin.informationTable()
        
    }

    @IBAction func latte(_ sender: UIButton) {
        readyCoffeeView.text = coffeeMachin.makeCoffe(type: .Latte)
        informationView.text = coffeeMachin.informationTable()
    }
     
    @IBAction func americano(_ sender: UIButton) {
        readyCoffeeView.text = coffeeMachin.makeCoffe(type: .Americano)
        informationView.text = coffeeMachin.informationTable()
    }
    
    @IBAction func espresso(_ sender: UIButton) {
        readyCoffeeView.text = coffeeMachin.makeCoffe(type: .Espresso)
        informationView.text = coffeeMachin.informationTable()
    }
    
    @IBAction func addWater(_ sender: UIButton) {
        coffeeMachin.addWanter(addWater: 500)
        informationView.text = coffeeMachin.informationTable()
    }
    
    @IBAction func addCoffee(_ sender: UIButton) {
        coffeeMachin.addCoffee(addCoffee: 50)
        informationView.text = coffeeMachin.informationTable()
    }
    
    @IBAction func addMilk(_ sender: UIButton) {
        coffeeMachin.addMilk(addMilk: 50)
        informationView.text = coffeeMachin.informationTable()
    }
    
 }


