//
//  Paso2ViewController.swift
//  PizzaStore
//
//  Created by Macbook pro  on 06/02/16.
//  Copyright © 2016 Stricz Labs. All rights reserved.
//

import UIKit

class Paso2ViewController: UIViewController {
    var miPizza:Pizza?
    let tipoQueso:[String] = TipoQueso.toArray
    
    @IBOutlet weak var queso1: UISwitch!
    @IBOutlet weak var queso2: UISwitch!
    @IBOutlet weak var queso3: UISwitch!
    @IBOutlet weak var queso4: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as! Paso3ViewController
        nextView.miPizza = miPizza
    }
    @IBAction func active1(sender: UISwitch) {
        var result:String? = ""
        if queso1.on{
            queso2.on = false
            queso3.on = false
            queso4.on = false
            result = TipoQueso.Mozarela.getName()
        }
        
        miPizza?.tipoQueso = result
        print(result)
    }
    
    @IBAction func active2(sender: UISwitch) {
        var result:String? = ""
        if queso2.on{
            queso1.on = false
            queso3.on = false
            queso4.on = false
            result = TipoQueso.Cheddar.getName()
        }
        
        miPizza?.tipoQueso = result
        print(result)
    }
    
    @IBAction func active3(sender: UISwitch) {
        var result:String? = ""
        if queso3.on{
            queso1.on = false
            queso2.on = false
            queso4.on = false
            result = TipoQueso.Parmesano.getName()
        }
        miPizza?.tipoQueso = result
        print(result)
    }
    
    @IBAction func active4(sender: UISwitch) {
        var result:String? = ""
        if queso4.on{
            queso1.on = false
            queso3.on = false
            queso2.on = false
            result = TipoQueso.Sin_queso.getName()
        }
        miPizza?.tipoQueso = result
        print(result)
    }

}
