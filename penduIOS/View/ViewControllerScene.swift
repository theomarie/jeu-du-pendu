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
    var tabMotAtrouver: [String] = []
    var listMot: String = ""
    var compteurErreur: Int = 0
    var compteurBon: Int = 0
    var lettreJouer: String = ""
    
    @IBOutlet weak var imagePendu: UIImageView!
    
    
    @IBOutlet weak var labelLettre: UILabel! // Utiliser le clavier virtuel
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    @IBOutlet weak var textField6: UITextField!
    @IBOutlet weak var textField7: UITextField!
    @IBOutlet weak var textField8: UITextField!
    @IBOutlet weak var textField9: UITextField!
    @IBOutlet weak var textField10: UITextField!
    @IBOutlet weak var textField11: UITextField!
    @IBOutlet weak var textField12: UITextField!
    
    
 
    
    // Titre Label
   
    var tabDeTextField: [UITextField] = []
    
    
    override func viewDidLoad() { // Au chargement de la View
        super.viewDidLoad()
        compteurBon = 0
        compteurErreur = 0
        labelLettre.text = "Utiliser le clavier virtuel"
        RestaureTableau()
        lettreJouer = ""
        AjouteLeMotDansArray(word: listMot) // Ajout du mot dans un tableau
        print(tabMotAtrouver) // Non Visible pour L'utilisateur
   //   VerifLoccurence(char: "A")
       tabDeTextField.append(textField1)
        tabDeTextField.append(textField2)
        tabDeTextField.append(textField3)
        tabDeTextField.append(textField4)
        tabDeTextField.append(textField5)
        tabDeTextField.append(textField6)
        tabDeTextField.append(textField7)
        tabDeTextField.append(textField8)
        tabDeTextField.append(textField9)
        tabDeTextField.append(textField10)
        tabDeTextField.append(textField11)
        tabDeTextField.append(textField12)
        
        Visible() // Rend Visible les TexteField Utiles
        
    }
    
    
    

    // Declaration de mes buttons
    @IBAction func A(_ sender: Any) {
        AfficheLettreJouer(lettre: "A")
        uiButtonA.isHidden = true
        VerifLoccurenceObjet(char: "A")
        VerifPerdu()
        VerifGagne()
    }
    
    @IBAction func B(_ sender: Any) {
        AfficheLettreJouer(lettre: "B")
        uiButtonB.isHidden = true
        VerifLoccurenceObjet(char: "B")
        VerifPerdu()
        VerifGagne()
    }
    @IBAction func C(_ sender: Any) {
        AfficheLettreJouer(lettre: "C")
        uiButtonC.isHidden = true
        VerifLoccurenceObjet(char: "C")
         VerifPerdu()
        VerifGagne()
    }
    @IBAction func D(_ sender: Any) {
        AfficheLettreJouer(lettre: "D")
        uiButtonD.isHidden = true
        VerifLoccurenceObjet(char: "D")
       VerifPerdu()
        VerifGagne()
    }
    @IBAction func E(_ sender: Any) {
        AfficheLettreJouer(lettre: "E")
        uiButtonE.isHidden = true
        VerifLoccurenceObjet(char: "E")
       VerifPerdu()
        VerifGagne()
    }
    @IBAction func G(_ sender: Any) {
        AfficheLettreJouer(lettre: "G")
        uiButtonG.isHidden = true
        VerifLoccurenceObjet(char: "G")
       VerifPerdu()
        VerifGagne()
    }
    @IBAction func F(_ sender: Any) {
        AfficheLettreJouer(lettre: "F")
        uiButtonF.isHidden = true
        VerifLoccurenceObjet(char:"F")
       VerifPerdu()
        VerifGagne()
    }
    @IBAction func H(_ sender: Any) {
        AfficheLettreJouer(lettre: "H")
        uiButtonH.isHidden = true
        VerifLoccurenceObjet(char: "H")
       VerifPerdu()
        VerifGagne()
    }
    @IBAction func I(_ sender: Any) {
        AfficheLettreJouer(lettre: "I")
        uiButtonI.isHidden = true
       VerifLoccurenceObjet(char: "I")
       VerifPerdu()
        VerifGagne()
    }
    @IBAction func J(_ sender: Any) {
        AfficheLettreJouer(lettre: "J")
        uiButtonJ.isHidden = true
        VerifLoccurenceObjet(char: "J")
       VerifPerdu()
        VerifGagne()
    }
    @IBAction func K(_ sender: Any) {
        AfficheLettreJouer(lettre: "K")
        uiButtonK.isHidden = true
       VerifLoccurenceObjet(char: "K")
       VerifPerdu()
        VerifGagne()
    }
    @IBAction func L(_ sender: Any) {
        AfficheLettreJouer(lettre: "L")
        uiButtonL.isHidden = true
        VerifLoccurenceObjet(char: "L")
        VerifPerdu()
        VerifGagne()
    }
    @IBAction func M(_ sender: Any) {
        AfficheLettreJouer(lettre: "M")
        uiButtonM.isHidden = true
        VerifLoccurenceObjet(char: "M")
        VerifPerdu()
        VerifGagne()
    }
    @IBAction func N(_ sender: Any) {
        AfficheLettreJouer(lettre: "N")
        uiButtonN.isHidden = true
        VerifLoccurenceObjet(char: "N")
        VerifPerdu()
        VerifGagne()
    }
    @IBAction func O(_ sender: Any) {
        AfficheLettreJouer(lettre: "O")
        uiButtonO.isHidden = true
        VerifLoccurenceObjet(char: "O")
        VerifPerdu()
        VerifGagne()
    }
    @IBAction func P(_ sender: Any) {
        AfficheLettreJouer(lettre: "P")
        uiButtonP.isHidden = true
        VerifLoccurenceObjet(char: "P")
        VerifPerdu()
        VerifGagne()
    }
    @IBAction func Q(_ sender: Any) {
        AfficheLettreJouer(lettre: "Q")
        uiButtonQ.isHidden = true
        VerifLoccurenceObjet(char:  "Q")
        VerifPerdu()
        VerifGagne()
    }
    @IBAction func R(_ sender: Any) {
        AfficheLettreJouer(lettre: "R")
        uiButtonR.isHidden = true
        VerifLoccurenceObjet(char:  "R")
        VerifPerdu()
        VerifGagne()
    }
    @IBAction func S(_ sender: Any) {
        AfficheLettreJouer(lettre: "S")
        uiButtonS.isHidden = true
        VerifLoccurenceObjet(char:  "S")
        VerifPerdu()
        VerifGagne()
    }
    @IBAction func T(_ sender: Any) {
        AfficheLettreJouer(lettre: "T")
        uiButtonT.isHidden = true
        VerifLoccurenceObjet(char:  "T")
        VerifPerdu()
        VerifGagne()
    }
    @IBAction func U(_ sender: Any) {
        AfficheLettreJouer(lettre: "U")
        uiButtonU.isHidden = true
        VerifLoccurenceObjet(char: "U")
        VerifPerdu()
        VerifGagne()
    }
    @IBAction func V(_ sender: Any) {
        AfficheLettreJouer(lettre: "V")
        uiButtonV.isHidden = true
        VerifLoccurenceObjet(char: "V")
        VerifPerdu()
        VerifGagne()
    }
    @IBAction func W(_ sender: Any) {
        AfficheLettreJouer(lettre: "W")
        uiButtonW.isHidden = true
        VerifLoccurenceObjet(char: "W")
        VerifPerdu()
        VerifGagne()
    }
    @IBAction func X(_ sender: Any) {
        AfficheLettreJouer(lettre: "X")
        uiButtonX.isHidden = true
        VerifLoccurenceObjet(char: "X")
        VerifPerdu()
        VerifGagne()
    }
    @IBAction func Y(_ sender: Any) {
        AfficheLettreJouer(lettre: "Y")
        uiButtonY.isHidden = true
        VerifLoccurenceObjet(char: "Y")
        VerifPerdu()
        VerifGagne()
    }
    @IBAction func Z(_ sender: Any) {
        AfficheLettreJouer(lettre: "Z")
        uiButtonZ.isHidden = true
        VerifLoccurenceObjet(char: "Z")
        VerifPerdu()
        VerifGagne()
    }
    
    // Liste des Fonctions
    
    // Permet d'ajouter le mot dans un Tableau
    
    func AjouteLeMotDansArray(word: String){
        for character in word{
            tabMotAtrouver.append(String(character))
        }
    }
    
    func RestaureTableau() {
        tabMotAtrouver.removeAll()
    }
    // Rend Visible le bon nombre de TextField
    func Visible()  {
        let elt = tabMotAtrouver.count
        var i = 0
        print(String(elt))
        
        while(i <= elt-1){
            tabDeTextField[i].isHidden = false
            i = i+1
            }
        }
    
    
    // Verifie si la touche correspond
    func VerifLoccurenceObjet(char: String) {
      //var compteurBon = 0
        compteurBon = 0
       var i = 0
        for motDuTab in tabMotAtrouver {
            if(char == motDuTab){
                tabDeTextField[i].text = motDuTab
                compteurBon = 1
            }
            i = i + 1
        }
        if(compteurBon != 1){
            compteurErreur = compteurErreur + 1
            print("Valeur du compteurErreur" , compteurErreur)
            compteurBon = 0
            print("Valeur du compteurBon" , compteurBon)
            AffichePendu()
            //   compteurInterne = compteurBon
        }
    }
       /* if(compteurBon != 1){
            compteurErreur = compteurErreur + 1
            print("Valeur du compteurErreur" , compteurErreur)
            compteurBon = 0
            AffichePendu()
 */
        
    
    
    
    
    func VerifPerdu(){
        if (compteurErreur >= 7) {
                let alert = SCLAlertView()
                alert.addButton("Contre un Ami", target: self , selector: #selector(retourMenu))
                alert.showError(varPlayer2Text, subTitle: "Yous loose")
            
            CacherStackView()
        }
    }
    
    
    // Count le nombre de lettre du mot si il et = au compteur de bonne reponse alors return Vrais
    func VerifGagne() {
        let elt = tabMotAtrouver.count
        var i = 0
        var compare = ""
        print(String(elt))
        
        while(i <= elt-1){
            compare = compare + String(tabDeTextField[i].text!)
            i = i+1
        }
        print("compare = " + compare)
        print("ListMot = " + listMot)
        if (compare == listMot) {
            let alert = SCLAlertView()
            alert.addButton("Contre un Ami", target: self , selector: #selector(retourMenu))
            alert.showSuccess(varPlayer2Text, subTitle: "You Win")
            CacherStackView()
        }
    }
    
    // Fonction pour retour au menu
    @objc func retourMenu() {
        
        
        performSegue(withIdentifier: "SegueRetour", sender: nil) // appel de la fonction
        
    }
    
    
    
    
    // Button en bas de la page
    
    @IBAction func AfficheMenu(_ sender: Any) {
       VerifPerdu()
       VerifGagne()
    }
    
    @IBOutlet weak var buttonAfficheMenu: UIButton!
    // Fin Button en bas de la page

    // Liste de mes Collections Buttons Pour pouvoir les Desactiver une foix appuyer
    
    @IBOutlet weak var uiButtonA: DesignableButton!
    @IBOutlet weak var uiButtonB: DesignableButton!
    @IBOutlet weak var uiButtonC: DesignableButton!
    @IBOutlet weak var uiButtonD: DesignableButton!
    @IBOutlet weak var uiButtonE: DesignableButton!
    @IBOutlet weak var uiButtonF: DesignableButton!
    @IBOutlet weak var uiButtonG: DesignableButton!
    @IBOutlet weak var uiButtonH: DesignableButton!
    @IBOutlet weak var uiButtonI: DesignableButton!
    @IBOutlet weak var uiButtonJ: DesignableButton!
    @IBOutlet weak var uiButtonK: DesignableButton!
    @IBOutlet weak var uiButtonL: DesignableButton!
    @IBOutlet weak var uiButtonM: DesignableButton!
    @IBOutlet weak var uiButtonN: DesignableButton!
    @IBOutlet weak var uiButtonO: DesignableButton!
    @IBOutlet weak var uiButtonP: DesignableButton!
    @IBOutlet weak var uiButtonQ: DesignableButton!
    @IBOutlet weak var uiButtonR: DesignableButton!
    @IBOutlet weak var uiButtonS: DesignableButton!
    @IBOutlet weak var uiButtonT: DesignableButton!
    @IBOutlet weak var uiButtonU: DesignableButton!
    @IBOutlet weak var uiButtonV: DesignableButton!
    @IBOutlet weak var uiButtonW: DesignableButton!
    @IBOutlet weak var uiButtonX: DesignableButton!
    @IBOutlet weak var uiButtonY: DesignableButton!
    @IBOutlet weak var uiButtonZ: DesignableButton!
    
    func CacherStackView() { // Cache les Stack view affiche le button
        stackView1.isHidden = true
        stackView2.isHidden = true
        stackView3.isHidden = true
        buttonAfficheMenu.isHidden = false
    }
    
    @IBOutlet weak var stackView1: UIStackView!
    @IBOutlet weak var stackView2: UIStackView!
    @IBOutlet weak var stackView3: UIStackView!
    // A chaque mot jouer incremente le label de la lettre
    func AfficheLettreJouer(lettre: String) {
        lettreJouer = lettreJouer + "." + lettre
        labelLettre.text = "Lettres joué : " + lettreJouer
        
    }
    
    func AffichePendu(){
        switch compteurErreur{
        case (1):
            imagePendu.image = UIImage(named: "pendu_5.png")
            print("Je naffiche rien ")
        case 2:
            imagePendu.image = UIImage(named: "pendu_6.png")
        case 3:
            imagePendu.image = UIImage(named: "pendu_7.png")
        case 4:
            imagePendu.image = UIImage(named: "pendu_8.png")
        case 5:
            imagePendu.image = UIImage(named: "pendu_9.png")
        case 6:
            imagePendu.image = UIImage(named: "pendu_10.png")
        case 7:
            imagePendu.image = UIImage(named: "pendu_11.png")
        default:
            imagePendu.image = UIImage(named: "pendu_11.png")
        }
    }
 /*   cercle.png
    croix.png
    delete.png
    entrer.png
    pendu_1.png
    pendu_2.png
    pendu_3.png
    pendu_4.png
    pendu_5.png
    pendu_6.png
    pendu_7.png
    pendu_8.png
    pendu_9.png
    pendu_10.png
    pendu_11.png
 */
    
    
}
