//
//  ViewController.swift
//  PizzaStore
//
//  Created by Macbook pro  on 01/02/16.
//  Copyright © 2016 Stricz Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var miPizza:Pizza? = Pizza()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView  = segue.destinationViewController as! Paso1ViewController
        nextView.miPizza = miPizza
    }
}

