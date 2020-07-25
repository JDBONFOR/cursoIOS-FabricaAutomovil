//
//  ViewController.swift
//  FabricaAutomoviles
//
//  Created by Juan Bonforti on 11/07/2020.
//  Copyright © 2020 Juan Bonforti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var crearAutomovilButton: UIButton!
    @IBOutlet weak var crearAutomovilMazdaButton: UIButton!
    
    var tipoAutomovil: Int?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: IBActions
    @IBAction func crearAutomovilAction(_ sender: Any) {
        tipoAutomovil = 0
        performSegue(withIdentifier: "verDetalleAutomovilSegue", sender: self)
    }
    @IBAction func crearAutomovilMazdaAction(_ sender: Any) {
        tipoAutomovil = 1
        performSegue(withIdentifier: "verDetalleAutomovilSegue", sender: self)
    }
    

    // MARK: Prepare SEGUE
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vcDestino = segue.destination as? DetalleAutomovilViewController {
            vcDestino.tipoAutomovil = self.tipoAutomovil
        }
    }
    
}

