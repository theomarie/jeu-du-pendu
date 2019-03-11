//
//  ViewController.swift
//  TheCompteur
//
//  Created by Theo Marie on 27/02/2019.
//  Copyright © 2019 Theo Marie. All rights reserved.
//

import UIKit
import SwiftyGif


class ViewController: UIViewController, UITextFieldDelegate {
    
    // Liste de mes Outlet StoryBoard
    
   
    @IBOutlet weak var textPlayer1: UITextField!
    @IBOutlet weak var textPlayer2: UITextField!
    
    
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
    }
    
}

extension ViewController: SwiftyGifDelegate {
    func gifDidStop(sender: UIImageView) {
        logoAnimationView.isHidden = true
    }
    
    
    
    
    // Fonction pour Changer de page + Choix des Donnees Transferer
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            let secondeViewController = segue.destination as! ViewControllerScene
            secondeViewController.varPlayer1Text = textPlayer1.text!
            secondeViewController.varPlayer2Text = textPlayer2.text!
          
            
            
        }
        
        
    }
    // Button pour Changer de page Vers le Jeu
    @IBAction func Button(_ sender: Any) {
        performSegue(withIdentifier: "segue", sender: nil) // appel de la fonction
        
    }
    
    // Les Boutons Gagne 
    
     
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textPlayer1.resignFirstResponder()
        textPlayer2.resignFirstResponder()
        return true
    }

    
    


}

