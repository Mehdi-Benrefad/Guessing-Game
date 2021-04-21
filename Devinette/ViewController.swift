//
//  ViewController.swift
//  Devinette
//
//  Created by Mehdi Benrefad on 19/04/2021.
//  Copyright © 2021 Mehdi Benrefad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var titre: UILabel!
    @IBOutlet weak var bouton: UIButton!
    @IBOutlet weak var `switch`: UISwitch!
    @IBOutlet weak var input: UITextField!
    var random=Int()
    var entree=Int()
    var count=Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        random = Int(arc4random_uniform(10))
        // Do any additional setup after loading the view.
        input.backgroundColor = UIColor.white
        //on initialise lemode et les couleurs
            initialiserMode()
        }

    //on change la couleur de background et on modifie la variable dans user default
    @IBAction func changeMode(_ sender: UISwitch) {
       changefromSwitch()
    }
    
    @IBAction func jouer(_ sender: Any) {
    
       count = count + 1
        
        if Int(input.text!) == random {
             let alertVC = UIAlertController(title: "Winner", message: "vous gagnez le jeu apres \(count) essai", preferredStyle: .alert)
            alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            present(alertVC, animated: true, completion: nil)
            
        }
        else if Int(input.text!)! < random {
             let alertVC = UIAlertController(title: "petite", message: "la valeur est inferieur au random", preferredStyle: .alert)
            alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            present(alertVC, animated: true, completion: nil)
            
        }else if Int(input.text!)! > random {
             let alertVC = UIAlertController(title: "grande", message: "la valeur est superieur au random", preferredStyle: .alert)
            alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            present(alertVC, animated: true, completion: nil)
            
        }
        
    }

    
    func changefromSwitch(){
        if `switch`.isOn == true{
            backgroundService.color = "black"
            view.backgroundColor = UIColor.black
            bouton.backgroundColor = UIColor.gray
            titre.textColor = UIColor.white
            label.textColor = UIColor.white
        }else{
            backgroundService.color = "black"
            view.backgroundColor = UIColor.white
            bouton.backgroundColor = UIColor.black
            bouton.titleLabel?.textColor = UIColor.white
            titre.textColor = UIColor.black
            label.textColor = UIColor.black
            
        }
        
    }
    
    func initialiserMode(){
        switch backgroundService.color {
           case "black":
               view.backgroundColor = UIColor.black
               `switch`.isOn = true
                bouton.backgroundColor = UIColor.gray
                titre.textColor = UIColor.white
                label.textColor = UIColor.white
            case "white":
               view.backgroundColor = UIColor.white
                `switch`.isOn = false
               bouton.backgroundColor = UIColor.black
               bouton.titleLabel?.textColor = UIColor.white
                titre.textColor = UIColor.black
                label.textColor = UIColor.black
        default:
               break
           }
        
    }
}

