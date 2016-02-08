//
//  Paso5ViewController.swift
//  PizzaStore
//
//  Created by Macbook pro  on 07/02/16.
//  Copyright © 2016 Stricz Labs. All rights reserved.
//

import UIKit

class Paso5ViewController: UIViewController {
var miPizza:Pizza?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func cocinarAction() {
        if !miPizza!.isComplete()
        {
            let alertDialog = UIAlertController(title: "Campos vacios.", message: "No se puede procesar debido a que tienes campos vacios, regresa para completar tu orden correctamente.", preferredStyle: UIAlertControllerStyle.Alert)
            alertDialog.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alertDialog, animated: true, completion: nil)
        }
        else{
            let alertDialog = UIAlertController(title: "Completo", message: "Tu orden sera procesada.\n Gracias por elegir Stricz Labs.", preferredStyle: UIAlertControllerStyle.Alert)
            alertDialog.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alertDialog, animated: true, completion: nil)
        }
    }
}
