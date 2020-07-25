//
//  File.swift
//  FabricaAutomoviles
//
//  Created by Juan Bonforti on 25/07/2020.
//  Copyright © 2020 Juan Bonforti. All rights reserved.
//

import Foundation

class AutomovilElectrico: Automovil {
    var porcentajeBateria: Int = 100
    
    func cargarBateria() -> String {
        porcentajeBateria =  100
        return "Carga exitosa"
    }
}
