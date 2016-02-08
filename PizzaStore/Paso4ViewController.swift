//
//  Paso4ViewController.swift
//  PizzaStore
//
//  Created by Macbook pro  on 06/02/16.
//  Copyright © 2016 Stricz Labs. All rights reserved.
//

import UIKit

class Paso4ViewController: UIViewController {
    var miPizza:Pizza?
    
    var conjunto:Set<String> = Set<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        miPizza?.tipoIngrediente = conjunto
        let nextView = segue.destinationViewController as!Paso5ViewController 
        nextView.miPizza = miPizza
        for i in conjunto{
            print(">>\(i)")
        }
    }
    
    @IBAction func chooise(sender: UISwitch) {
        if(sender.on){
            print(sender.restorationIdentifier)
            conjunto.insert(sender.restorationIdentifier!)
        }
        else{
            conjunto.remove(sender.restorationIdentifier!)
        }
    }
    
}
