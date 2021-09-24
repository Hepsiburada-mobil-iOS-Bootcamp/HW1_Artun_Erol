//
//  CatchingEnvironmentClass.swift
//  iOS_Week_1
//
//  Created by Artun Erol on 24.09.2021.
//

import Foundation
import UIKit

class Environment: UIViewController {
    
    @IBOutlet weak var catchButtonOutlet: UIButton!
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    @IBOutlet weak var didCatchLabel: UILabel!
    
    @IBOutlet weak var pokeBallOutlet: UIButton!
    
    let pokemonClass = Pokemon()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        pokeBallOutlet.isHidden = true
        didCatchLabel.isHidden = true
    }
    
    @IBAction func upArrow(_ sender: UIButton) {
        let isTherePokemon = pokemonClass.isTherePokemon()
        print("You are walking to Forward")
        
        if isTherePokemon != "None" {
            DispatchQueue.main.async {
                self.catchButtonOutlet.setImage(UIImage(named: isTherePokemon ?? ""), for: .normal)
                self.didCatchLabel.isHidden = false
                self.pokeBallOutlet.isHidden = false
                print("You have found a pokemon! Try to Catch it or keep mooving to find another one!")
            
            }

        }
        else {
            print("You couldn't find a pokemon yet. Keep moving!")
        }
    
    }
    
    @IBAction func downArrow(_ sender: Any) {
        
        let isTherePokemon = pokemonClass.isTherePokemon()
        print("You are walking to Backwards")
        
        if isTherePokemon != "None" {
            DispatchQueue.main.async {
                self.catchButtonOutlet.setImage(UIImage(named: isTherePokemon ?? ""), for: .normal)
                self.didCatchLabel.isHidden = false
                self.pokeBallOutlet.isHidden = false
                print("You have found a pokemon! Try to Catch it or keep mooving to find another one!")
                
            }
        }
        else {
            print("You couldn't find a pokemon yet. Keep moving!")
        }
       
    }
    @IBAction func rightArrow(_ sender: Any) {
        
        let isTherePokemon = pokemonClass.isTherePokemon()
        print("You are walking to Right")
        
        if isTherePokemon != "None" {
            DispatchQueue.main.async {
                self.catchButtonOutlet.setImage(UIImage(named: isTherePokemon ?? ""), for: .normal)
                self.didCatchLabel.isHidden = false
                self.pokeBallOutlet.isHidden = false
                print("You have found a pokemon! Try to Catch it or keep mooving to find another one!")
                
            }
        }
        else {
            print("You couldn't find a pokemon yet. Keep moving!")
        }
    }
    @IBAction func leftArrow(_ sender: Any) {
        
        let isTherePokemon = pokemonClass.isTherePokemon()
        print("You are walking to Left")
        
        if isTherePokemon != "None" {
            DispatchQueue.main.async {
                self.catchButtonOutlet.setImage(UIImage(named: isTherePokemon ?? ""), for: .normal)
                self.didCatchLabel.isHidden = false
                self.pokeBallOutlet.isHidden = false
                print("You have found a pokemon! Try to Catch it or keep mooving to find another one!")
                
            }
        }
        else {
            print("You couldn't find a pokemon yet. Keep moving!")
        }
        
    }
    
    @IBAction func pokeBallPressed(_ sender: Any) {
        
        guard let catchedOrNot = Catched.allCases.randomElement() else {
            return
        }
        
        
        switch catchedOrNot {
        
        case .catched:
            
            let alert = UIAlertController(title: "Great!", message: "You have catched the pokemon", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok! Take me back to menu", style: .cancel) { (_) in
                let vc = self.storyboard?.instantiateViewController(identifier: "mainVC")
                self.navigationController?.pushViewController(vc!, animated: true)
            }
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            
        case .tryAgain:
            
            let alert = UIAlertController(title: "Oops!", message: "Try to catch your pokemon again!", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok!", style: .cancel)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            


        }
        
    }
    
}
