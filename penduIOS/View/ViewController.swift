//
//  ViewController.swift
//  TheCompteur
//
//  Created by Theo Marie on 27/02/2019.
//  Copyright © 2019 Theo Marie. All rights reserved.
//

import UIKit
import SwiftyGif
import AnimatedTextFieldCounter



class ViewController: UIViewController, UITextFieldDelegate{
    
    
    
    // Liste de mes Outlet StoryBoard
    
    
    
    @IBOutlet weak var textPlayer1: UITextField!
    @IBOutlet weak var textPlayer2: UITextField!
    
    // Mes Variables
    var tabMot: [String] = []
    var mot: String = ""
    
    @IBOutlet weak var motChoisiTexField: AnimatedTextFieldCounter!
    
    
     let logoAnimationView = LogoAnimationView()
   
    
    override func viewDidLoad() { // Chargement de la View
        super.viewDidLoad()
        view.addSubview(logoAnimationView)
        logoAnimationView.pinEdgesToSuperView()
        logoAnimationView.logoGifImageView.delegate = self
        
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        logoAnimationView.logoGifImageView.startAnimatingGif()
       motChoisiTexField.counterDelegate?.reachedMaxLimit(textfield: motChoisiTexField)
    }
    
}


extension ViewController: SwiftyGifDelegate {
    func gifDidStop(sender: UIImageView) {
        logoAnimationView.isHidden = true
    }
    
    // Verifie si le mot depasse pas le nombre de charactere prevue (12)
    func VerifCharactere(char: String){
        
        if(mot.count <= 11){
            mot = mot + char
            motChoisiTexField.text = mot
        } else{
            
        }
    }
    
    
    // Declaration de mes buttons
    @IBAction func A(_ sender: Any) {
        VerifCharactere(char: "A")
            }

    @IBAction func B(_ sender: Any) {
        VerifCharactere(char: "B")
    }
    @IBAction func C(_ sender: Any) {
        VerifCharactere(char: "C")
    }
    @IBAction func D(_ sender: Any) {
       VerifCharactere(char: "D")
    }
    @IBAction func E(_ sender: Any) {
        VerifCharactere(char: "E")
    }
    @IBAction func G(_ sender: Any) {
        VerifCharactere(char: "G")
    }
    @IBAction func F(_ sender: Any) {
      VerifCharactere(char: "F")
    }
    @IBAction func H(_ sender: Any) {
        VerifCharactere(char: "H")
    }
    @IBAction func I(_ sender: Any) {
        VerifCharactere(char: "I")
            }
    @IBAction func J(_ sender: Any) {
        VerifCharactere(char: "J")
    }
    @IBAction func K(_ sender: Any) {
        mot = mot + "K"
        motChoisiTexField.text = mot
    }
    @IBAction func L(_ sender: Any) {
        VerifCharactere(char: "L")
    }
    @IBAction func M(_ sender: Any) {
       VerifCharactere(char: "M")
    }
    @IBAction func N(_ sender: Any) {
       VerifCharactere(char: "N")
    }
    @IBAction func O(_ sender: Any) {
        VerifCharactere(char: "O")
    }
    @IBAction func P(_ sender: Any) {
        VerifCharactere(char: "P")
    }
    @IBAction func Q(_ sender: Any) {
        VerifCharactere(char: "Q")
    }
    @IBAction func R(_ sender: Any) {
        VerifCharactere(char: "R")
    }
    @IBAction func S(_ sender: Any) {
        VerifCharactere(char: "S")
    }
    @IBAction func T(_ sender: Any) {
        VerifCharactere(char: "T")
    }
    @IBAction func U(_ sender: Any) {
        VerifCharactere(char: "U")
    }
    @IBAction func V(_ sender: Any) {
        VerifCharactere(char: "V")
    }
    @IBAction func W(_ sender: Any) {
        VerifCharactere(char: "W")
    }
    @IBAction func X(_ sender: Any) {
        VerifCharactere(char: "X")
    }
    @IBAction func Y(_ sender: Any) {
        VerifCharactere(char: "Y")
    }
    @IBAction func Z(_ sender: Any) {
        VerifCharactere(char: "Z")
    }
    @IBAction func supp(_ sender: Any) {
        if (mot.count > 0) {
            mot.remove(at: String.Index(encodedOffset: mot.count-1))
            motChoisiTexField.text = mot
        }
        
    }
    
    
    
    
    
    // Fonction pour Changer de page + Choix des Donnees Transferer
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            let secondeViewController = segue.destination as! ViewControllerScene
            secondeViewController.varPlayer1Text = textPlayer1.text!
            secondeViewController.varPlayer2Text = textPlayer2.text!
            secondeViewController.listMot = mot
            print(mot)
            
        }
        
        
    }
    
    // Button pour Changer de page Vers le Jeu
    @IBAction func Button(_ sender: Any) {
        if (mot.count > 1) {
             performSegue(withIdentifier: "segue", sender: nil) // appel de la fonction
        }
       
    }
    
   
     // Button retour sur le clavier pour le masquer
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textPlayer1.resignFirstResponder()
        textPlayer2.resignFirstResponder()
        return true
    }

    



}

