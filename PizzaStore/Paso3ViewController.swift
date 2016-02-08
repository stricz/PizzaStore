//
//  Paso3ViewController.swift
//  PizzaStore
//
//  Created by Macbook pro  on 06/02/16.
//  Copyright © 2016 Stricz Labs. All rights reserved.
//

import UIKit

class Paso3ViewController: UIViewController {
    var miPizza:Pizza?
    let tamanioPizza:[String] = TamanoPizza.toArray
    
    @IBOutlet weak var buttonChica: UISwitch!
    @IBOutlet weak var buttonMediana: UISwitch!
    @IBOutlet weak var buttonGrande: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as! Paso4ViewController
        nextView.miPizza = miPizza
    }
    
    
    @IBAction func active1(sender: UISwitch) {
        var result:String? = ""
        if buttonChica.on{
            buttonMediana.on = false
            buttonGrande.on = false
            result = TamanoPizza.Chica.getName()
        }
        
        miPizza?.tamanio = result
        print(result)
    }
    
    @IBAction func active2(sender: UISwitch) {
        var result:String? = ""
        if buttonMediana.on{
            buttonChica.on = false
            buttonGrande.on = false
            result = TamanoPizza.Mediana.getName()
        }
        
        miPizza?.tamanio = result
        print(result)
    }
    
    @IBAction func active3(sender: UISwitch) {
        var result:String? = ""
        if buttonGrande.on{
            buttonChica.on = false
            buttonMediana.on = false
            result = TamanoPizza.Grande.getName()
        }
        miPizza?.tamanio = result
        print(result)
    }
}
