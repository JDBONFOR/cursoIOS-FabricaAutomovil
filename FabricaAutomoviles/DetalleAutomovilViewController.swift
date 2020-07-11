//
//  DetalleAutomovilViewController.swift
//  FabricaAutomoviles
//
//  Created by Juan Bonforti on 11/07/2020.
//  Copyright © 2020 Juan Bonforti. All rights reserved.
//

import UIKit

class DetalleAutomovilViewController: UIViewController {
    // MARK: IBOutlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelView: UILabel!
    
    var tipoAutomovil: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let automovilExist = tipoAutomovil {
            
            switch automovilExist {
            case 0:
                print("Voy a crear un automovil")
            default:
                print("Voy a crear un automovil tipo Mazda")
            }
            
        }
        
        
    }
    
    // MARK: IBActions
    @IBAction func encenderAction(_ sender: Any) {
    }
    @IBAction func apagarAction(_ sender: Any) {
    }
    @IBAction func acelerarAction(_ sender: Any) {
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

    
}
