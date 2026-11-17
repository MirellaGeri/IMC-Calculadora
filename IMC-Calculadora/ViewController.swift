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
    @IBOutlet weak var descriptionLabel: UILabel!
    
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
        switch result {
        case 0..<18.5:
            descriptionLabel.text = "Bajo Peso"
            resultLabel.textColor = UIColor.bmiUnderweight
            descriptionLabel.textColor = UIColor.bmiUnderweight
        case 18.5..<25.0:
            descriptionLabel.text = "Peso Normal"
            resultLabel.textColor = UIColor.bmiNormal
            descriptionLabel.textColor = UIColor.bmiNormal
        case 25.0..<30.0:
            descriptionLabel.text = "Sobrepeso"
            resultLabel.textColor = UIColor.bmiOverweight
            descriptionLabel.textColor = UIColor.bmiOverweight
        case 30.0..<35.0:
            descriptionLabel.text = "Obesidad"
            resultLabel.textColor = UIColor.bmiObesity
            descriptionLabel.textColor = UIColor.bmiObesity
        default:
            descriptionLabel.text = "Obesidad Extrema"
            resultLabel.textColor = UIColor.bmiExtremeObesity
            descriptionLabel.textColor = UIColor.bmiExtremeObesity
        }
    }
}

