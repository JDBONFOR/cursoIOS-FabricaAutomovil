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
    var automovil:Automovil?
    var automovilElectrico:AutomovilElectrico?
    var estadoAutomovil:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let automovilExist = tipoAutomovil {
            
            switch automovilExist {
            case 0:
                print("Voy a crear un automovil")
                automovil = Automovil();
                imageView.image = UIImage(named: "automovil")
                labelView.text = "Se ha creado el automovil correctamente..."
            case 1:
                print("Voy a crear un automovil tipo Mazda")
                automovilElectrico = AutomovilElectrico()
                imageView.image = UIImage(named: "autoelectrico")
                labelView.text = "Se ha creado el automovil electrico correctamente..."
            default:
                print("Error")
            }
            
        }
        
        
    }
    
    // MARK: IBActions
    @IBAction func verInformacion(_ sender: Any) {
        if let automovilExist = tipoAutomovil {
            
            switch automovilExist {
            case 0:
                labelView.text = """
                El automovil tiene \(automovil!.numeroLlantas) llantas,
                y tiene el color \(automovil!.color), su precio es de \(automovil!.precio)
                """
            case 1:
                labelView.text = """
                El automovil tiene \(automovilElectrico!.numeroLlantas) llantas,
                y tiene el color \(automovilElectrico!.color), su precio es de \(automovilElectrico!.precio).
                Su porcentaje de batería es \(automovilElectrico!.porcentajeBateria) %
                """
            default:
                print("Error")
            }
            
        }
    }
    @IBAction func encenderAction(_ sender: Any) {
        if let automovilExist = tipoAutomovil {
            switch automovilExist {
            case 0:
                if (!estadoAutomovil) {
                    estadoAutomovil = true
                    labelView.text = "El automovil se ha encendido correctamente"
                } else {
                    labelView.text = "El coche ya se encuentra encendido."
                }
            case 1:
                if (!estadoAutomovil) {
                    estadoAutomovil = true
                    labelView.text = "El automovil electrico se ha encendido correctamente"
                    automovilElectrico!.porcentajeBateria = automovilElectrico!.porcentajeBateria - 2
                } else {
                    labelView.text = "El coche ya se encuentra encendido."
                }
            default:
                return ;
            }
        }
        
    }
    @IBAction func apagarAction(_ sender: Any) {
        if let automovilExist = tipoAutomovil {
            switch automovilExist {
            case 0:
                if (!estadoAutomovil) {
                    labelView.text = "El coche ya se encuentra apagado."
                } else {
                    estadoAutomovil = false
                    labelView.text = "El coche se ha apagado"
                }
            case 1:
                if (!estadoAutomovil) {
                    labelView.text = "El coche ya se encuentra apagado."
                } else {
                    estadoAutomovil = false
                    labelView.text = "El coche se ha apagado"
                }
            default:
                return ;
            }
        }
    }
    @IBAction func acelerarAction(_ sender: Any) {
        if let automovilExist = tipoAutomovil {
            switch automovilExist {
            case 0:
                if (!estadoAutomovil) {
                    labelView.text = "El coche se encuentra apagado. Enciendalo"
                } else {
                    labelView.text = "Ha acelerado exitosamente"
                }
            case 1:
                if (!estadoAutomovil) {
                    labelView.text = "El coche se encuentra apagado. Enciendalo"
                } else {
                    labelView.text = "Ha acelerado exitosamente"
                    automovilElectrico!.porcentajeBateria = automovilElectrico!.porcentajeBateria - 7
                }
            default:
                return ;
            }
        }
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
