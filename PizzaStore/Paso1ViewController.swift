//
//  Paso1ViewController.swift
//  PizzaStore
//
//  Created by Macbook pro  on 03/02/16.
//  Copyright © 2016 Stricz Labs. All rights reserved.
//

import UIKit

class Paso1ViewController: UIViewController{
    var miPizza:Pizza?
    let tipoMasa:[String] = TipoMasa.toArray
    
    @IBOutlet weak var buttonDelgada: UISwitch!
    @IBOutlet weak var buttonCrujiente: UISwitch!
    @IBOutlet weak var buttonGruesa: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as! Paso2ViewController
        nextView.miPizza = miPizza
    }
    
    
    @IBAction func active1(sender: UISwitch) {
        var result:String? = ""
        if buttonDelgada.on{
            buttonGruesa.on = false
            buttonCrujiente.on = false
            result = TipoMasa.Delgada.getName()
        }
        
        miPizza?.tipoMasa = result
        print(result)
    }
    
    @IBAction func active2(sender: UISwitch) {
        var result:String? = ""
        if buttonCrujiente.on{
            buttonGruesa.on = false
            buttonDelgada.on = false
            result = TipoMasa.Crujiente.getName()
        }
        
        miPizza?.tipoMasa = result
        print(result)
    }
    
    @IBAction func active3(sender: UISwitch) {
        var result:String? = ""
        if buttonGruesa.on{
            buttonDelgada.on = false
            buttonCrujiente.on = false
            result = TipoMasa.Gruesa.getName()
        }
        miPizza?.tipoMasa = result
        print(result)
    }
}
