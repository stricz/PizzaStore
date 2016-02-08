//
//  PizzaModel.swift
//  PizzaStore
//
//  Created by Macbook pro  on 03/02/16.
//  Copyright © 2016 Stricz Labs. All rights reserved.
//

import Foundation

class Pizza{
    var tipoMasa:String?
    var tipoQueso:String?
    var tamanio:String?
    var tipoIngrediente:Set<String> = Set<String>()
    
    func isComplete()->Bool {
        print(tipoMasa)
        print(tipoQueso)
        print(tamanio)
        print(tipoIngrediente.isEmpty)
        if( tipoIngrediente.isEmpty || tipoMasa == nil || tamanio == nil || tipoQueso == nil){
            
        return false
        }
        else{
            return true
        }
    }
}


enum TipoMasa:String{
    case Delgada = "delgada",
    Crujiente = "crujiente",
    Gruesa = "gruesa"
    
    func getName()->String{
        return self.rawValue
    }
    
    static var toArray:[String] = [TipoMasa.Delgada.getName(),TipoMasa.Crujiente.getName(),TipoMasa.Gruesa.getName(),]

}

enum TipoQueso:String{
    case Mozarela = "mozarela",
    Cheddar = "cheddar",
    Parmesano = "parmesano",
    Sin_queso = "sin queso"
    
    func getName()->String{
        return self.rawValue
    }
    
    static var toArray:[String] = [TipoQueso.Mozarela.getName(),TipoQueso.Cheddar.getName(),TipoQueso.Parmesano.getName(),TipoQueso.Sin_queso.getName()]
}

enum TamanoPizza: String{
    case Chica = "chica",
    Mediana = "mediana",
    Grande = "grande"
    
    func getName()->String{
        return self.rawValue
    }
    
    static var toArray:[String] = [TamanoPizza.Chica.getName(),TamanoPizza.Mediana.getName(),TamanoPizza.Grande.getName(),]
}

enum TipoIngrediente:String{
    case Jamon = "Jamón",
    Pepperoni = "pepperoni",
    Pavo = "Pavo",
    Salchicha = "salchicha",
    Aceituna = "aceituna",
    Cebolla = "cebolla",
    Pimiento = "pimiento",
    Pina = "piña",
    Anchoa = "anchoa"
    
    func getName()->String{
        return self.rawValue
    }
    
    static var toArray:[String] = [TipoMasa.Delgada.getName(),TipoMasa.Crujiente.getName(),TipoMasa.Gruesa.getName(),]
}
