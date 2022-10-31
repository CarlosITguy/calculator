//
//  ViewController.swift
//  Calc2
//
//  Created by Consultant on 10/30/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
        
    }

    @IBOutlet weak var Pantalla: UILabel!
    var flag : Bool = false
    var Operation : String = ""
    var mainNumber: Double = 0
    var saveNumber: Double = 0
    var saveNumber2 : Double?
    
    func addOneNumber(numero: Double, num : Double) -> Double {
        let num : Double = num
        var numero : Double = numero
        numero  = numero * 10 + num
        return numero
    }
    func solv()-> Double{
        if Operation == "X" {
            self.saveNumber =   saveNumber * mainNumber
        }
        else if Operation == "/" {
            self.saveNumber = saveNumber / mainNumber
        }
        else if Operation == "+" {
            self.saveNumber = mainNumber + saveNumber
        }
        else if Operation == "-" {
            
            self.saveNumber =  saveNumber - mainNumber
        }
        else if
          Operation == "" {
            saveNumber = mainNumber
        }
        
   return saveNumber
    
    }
    
    
    
    
    @IBAction func Borrar(_ sender: Any) {
    mainNumber = 0
        Operation  = ""
        mainNumber = 0
        saveNumber = 0
        self.Pantalla.text = String(mainNumber)
    }
    
    @IBAction func plusmeno(_ sender: Any) {
        
    }
    @IBAction func Porcentaje(_ sender: Any) {
    }
    @IBAction func Divide(_ sender: Any) {saveNumber = solv()
        Operation = "/"
        self.Pantalla.text = String(mainNumber)
        mainNumber = 0
    }
    @IBAction func Multiplica(_ sender: Any) {
        saveNumber = solv()
        Operation = "X"
        self.Pantalla.text = String(saveNumber)
        mainNumber = 0
    }
    @IBAction func les(_ sender: Any) {
        saveNumber = solv()
        Operation = "-"
        self.Pantalla.text = String(mainNumber)
        mainNumber = 0
    }

       
        
        
    
    @IBAction func less(_ sender: Any) {
        saveNumber = solv()
        Operation = "-"
        self.Pantalla.text = String(saveNumber)
        mainNumber = 0
    }
    @IBAction func seven(_ sender: Any) {
        mainNumber =  addOneNumber(numero: mainNumber, num: 7)
          self.Pantalla.text = String(mainNumber)
    }
    @IBAction func eight(_ sender: Any) {mainNumber =  addOneNumber(numero: mainNumber, num: 8)
        self.Pantalla.text = String(mainNumber)
    }
    @IBAction func nine(_ sender: Any) {mainNumber =  addOneNumber(numero: mainNumber, num: 9)
        self.Pantalla.text = String(mainNumber)
    }
    @IBAction func four(_ sender: Any) {mainNumber =  addOneNumber(numero: mainNumber, num: 4)
        self.Pantalla.text = String(mainNumber)
    }
    @IBAction func five(_ sender: Any) {mainNumber =  addOneNumber(numero: mainNumber, num: 5)
        self.Pantalla.text = String(mainNumber)
    }
    @IBAction func six(_ sender: Any) {mainNumber =  addOneNumber(numero: mainNumber, num: 6)
        self.Pantalla.text = String(mainNumber)
    }
    @IBAction func one(_ sender: Any) {mainNumber =  addOneNumber(numero: mainNumber, num: 1)
        self.Pantalla.text = String(mainNumber)
    }
    @IBAction func two(_ sender: Any) {mainNumber =  addOneNumber(numero: mainNumber, num: 2)
        self.Pantalla.text = String(mainNumber)
    }
    @IBAction func three(_ sender: Any) {mainNumber =  addOneNumber(numero: mainNumber, num: 3)
        self.Pantalla.text = String(mainNumber)
    }
    @IBAction func plus(_ sender: Any) {
        saveNumber = solv()
        Operation = "+"
        self.Pantalla.text = String(saveNumber)
        mainNumber = 0
        
    }
    @IBAction func cero(_ sender: Any) {mainNumber =  addOneNumber(numero: mainNumber, num: 0)
        self.Pantalla.text = String(mainNumber)
    }
    @IBAction func decimal(_ sender: Any) {
    }
    @IBAction func equal(_ sender: Any) {
        saveNumber = solv()
        Operation = ""
        self.Pantalla.text = String(saveNumber)
        mainNumber = saveNumber

    }
    
    
}

