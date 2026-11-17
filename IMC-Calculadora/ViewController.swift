//
//  ViewController.swift
//  IMC-Calculadora
//
//  Created by Turno Mananas on 16/11/2026.
//

import UIKit

class ViewController: UIViewController {
    //outlet guarda una componente para tener acceso a èl fuera
    //action no se puede manipular, solo tienes acceso dentro de la funcion y no fuera
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    var height = 170.0
    var weight = 70.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightChanged(_ sender: UISlider) {
        height = Double(sender.value).rounded()
        heightLabel.text = String(Int(height))
    }
    
    @IBAction func weightChanged(_ sender: UIStepper) {
        weight = Double(sender.value)
        weightLabel.text = "\(Int(weight))"
    }
    @IBAction func calculateBMI(_ sender: Any){
        let heightInMeters = height / 100
        let result = weight / pow(heightInMeters,2)
        resultLabel.text = String(format: "%.2f", result)
    }
}

