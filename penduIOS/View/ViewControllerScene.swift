//
//  SecondViewController.swift
//  TheCompteur
//
//  Created by Theo Marie on 27/02/2019.
//  Copyright © 2019 Theo Marie. All rights reserved.
//

import Foundation
import UIKit
import SCLAlertView

class ViewControllerScene: UIViewController {
    
    var varPlayer1Text: String = ""
    var varPlayer2Text: String = ""
    var varSliderValue: String = ""
    var CompteurButton1: Int = 0
    var CompteurButton2: Int = 0
    
    // Titre Label
    @IBOutlet weak var titreLabel: UILabel!
    
   // Joueur 1--------------------
    @IBOutlet weak var labelPlayer1: UILabel!
    @IBOutlet weak var labelScorePlayer1: UILabel!
    @IBOutlet weak var buttonPlayer1: UIButton!
    
    
    
// Joueur 2
    @IBOutlet weak var labelPlayer2: UILabel!
    @IBOutlet weak var labelScorePlayer2: UILabel!
    @IBOutlet weak var buttonPlayer2: UIButton!
    
    
    override func viewDidLoad() { // Au chargement de la View
        super.viewDidLoad()
       VerifieNomDesJoueurs(player1: varPlayer1Text, player2: varPlayer2Text) // Appel de la fonction
       MiseAjourTitreLabel(varSliderValue: varSliderValue) // Affiche le nombre de point pour WIN
       InitialisationDesScores(varSliderValue: varSliderValue) // Mise des score a 0/ Valeur du Slider
        CompteurButton1 = 0
        CompteurButton2 = 0
        
    }
    
    
    
    
    
    
    
    
    
    // Liste des Fonctions
    
    
    
    func MiseAjourTitreLabel(varSliderValue:String) {
       titreLabel.text = "Le premier avec " + varSliderValue + " victoires gagne"
    }
    
    // Mise a jour du Scores des Joueurs a Zero
    func InitialisationDesScores(varSliderValue:String) {
        labelScorePlayer1.text = "0 / " + varSliderValue
        labelScorePlayer2.text = "0 / " + varSliderValue
    }
    // Initialisation des Label Nom des Joueurs 
    func VerifieNomDesJoueurs(player1: String,player2: String) {
        if((player1.isEmpty) && (player2.isEmpty)){ // Si les Variable n'on pas recuperer d'information depuis la page precedente alors
            varPlayer1Text = "Player 1"
            varPlayer2Text = "Player 2"
            labelPlayer1.text = varPlayer1Text
            labelPlayer2.text = varPlayer2Text
        } else if (player1.isEmpty){
            varPlayer1Text = "Player 1"
            labelPlayer2.text = varPlayer1Text
            labelPlayer2.text = varPlayer2Text // donnees recuperer de la ViewController
        } else if (player2.isEmpty){
            varPlayer2Text = "Player 2"
            labelPlayer2.text = varPlayer2Text
            labelPlayer1.text = varPlayer1Text // donnees recuperer de la ViewController
        }
        else{ // Si les valeur ne sont pas vide je les initialise dans mes Label
            labelPlayer1.text = varPlayer1Text // donnees recuperer de la ViewController 1
            labelPlayer2.text = varPlayer2Text // donnees recuperer de la ViewController
        }
    }
    
    @IBAction func buttonPlayer1Active(_ sender: Any) {
        CompteurButton1 = CompteurButton1 + 1
        if(CompteurButton1 < Int(varSliderValue)!) {
            labelScorePlayer1.text = String(CompteurButton1) + " / " + varSliderValue
        }
        else if ((CompteurButton1 == Int(varSliderValue)!)){
            labelScorePlayer1.text = varSliderValue + " / " + varSliderValue
            let alert = SCLAlertView()
            alert.addButton("Retour Menu", target: self , selector: #selector(retourMenu))
            alert.showSuccess(varPlayer1Text, subTitle: "You Win")
            CahceLesElements()
        } else if ((CompteurButton1 > Int(varSliderValue)!)) {
            let alert = SCLAlertView()
            alert.addButton("Retour Menu", target: self , selector: #selector(retourMenu))
            alert.showSuccess(varPlayer1Text, subTitle: "You Win")
        }
    }
    
    
    @IBAction func buttonPlayer2Active(_ sender: Any) {
        CompteurButton2 = CompteurButton2 + 1
        if(CompteurButton2 < Int(varSliderValue)!) {
            labelScorePlayer2.text = String(CompteurButton2) + " / " + varSliderValue
        }
        else if ((CompteurButton2 == Int(varSliderValue)!)){
            labelScorePlayer2.text = varSliderValue + " / " + varSliderValue
            let alert = SCLAlertView()
            alert.addButton("Retour Menu", target: self , selector: #selector(retourMenu))
            alert.showSuccess(varPlayer2Text, subTitle: "You Win")
            CahceLesElements()
        } else if ((CompteurButton2 > Int(varSliderValue)!)) {
        let alert = SCLAlertView()
        alert.addButton("Retour Menu", target: self , selector: #selector(retourMenu))
        alert.showSuccess(varPlayer2Text, subTitle: "You Win")
        }
    }
    
    
    // Liste de Mes Fonctions
    
    
    // Fonction pour retour au menu
    @objc func retourMenu() {
        
        
            performSegue(withIdentifier: "SegueRetour", sender: nil) // appel de la fonction
        
        }
    
    
    // Cache le Bouton du joueur qui perd
    func CahceLesElements() {
        if(CompteurButton1 > CompteurButton2) {
            buttonPlayer2.isHidden = true
        } else {buttonPlayer1.isHidden = true
        }
    }
    
    
    
    
}
