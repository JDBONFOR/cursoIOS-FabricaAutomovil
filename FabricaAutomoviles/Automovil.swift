//
//  Automovil.swift
//  FabricaAutomoviles
//
//  Created by Juan Bonforti on 11/07/2020.
//  Copyright © 2020 Juan Bonforti. All rights reserved.
//

import Foundation

class Automovil {
    
    var color = "neutro"
    var numeroLlantas = 4
    var precio = 5000
    
    func encender() -> Bool {
        return true
    }
    
    func apagar() -> Bool {
        return false
    }
    
    func acelerar() -> String {
        return "Aceleración exitosa"
    }
}
