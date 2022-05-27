//
//  ViewController.swift
//  DesafioJokenpo
//
//  Created by user218997 on 4/20/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelJokenpo: UILabel!
    
    @IBOutlet weak var labelPlay1: UILabel!
    @IBOutlet weak var labelPlay2: UILabel!
    
    @IBOutlet weak var labelResult: UILabel!
    
    @IBOutlet weak var labelScore1: UILabel!
    @IBOutlet weak var labelScore2: UILabel!
    @IBOutlet weak var labelScore3: UILabel!
    
    @IBOutlet weak var viewPlays: UIView!
    
    var placarP: Int = 0
    var placarC: Int = 0
    var placarT: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black
        
        labelPlay1.isHidden = true
        labelPlay2.isHidden = true
    }

    
    func firstPlay(){
       
        var computer: Int
        computer = Int.random(in: 0...2)
        
        labelPlay1.text = "Pedra"

        if computer == 0 {
            labelPlay2.text = "Pedra"
            labelResult.text = "Empate"
            placarT += 1
            labelScore3.text = String(placarT)
            
        }else if computer == 1 {
            labelPlay2.text = "Tesoura"
            labelResult.text = "Você ganhou!"
            placarP += 1
            labelScore1.text = String(placarP)
        }else{
            labelPlay2.text = "Papel"
            labelResult.text = "Você perdeu!"
            placarC += 1
            labelScore2.text = String(placarC)
        }
        
    }
    
    func secondPlay(){
       
        var computer: Int
        computer = Int.random(in: 0...2)
        
        labelPlay1.text = "Tesoura"
        
    
        if computer == 1 {
            labelPlay2.text = "Tesoura"
            labelResult.text = "Empate"
            placarT += 1
            labelScore3.text = String(placarT)
        }else if computer == 2 {
            labelPlay2.text = "Papel"
            labelResult.text = "Você ganhou!"
            placarP += 1
            labelScore1.text = String(placarP)
        }else{
            labelPlay2.text = "Pedra"
            labelResult.text = "Você perdeu!"
            placarC += 1
            labelScore2.text = String(placarC)
        }
        
    }
    
    func thirdPlay(){
       
        var computer: Int
        computer = Int.random(in: 0...2)
        
        labelPlay1.text = "Papel"

        if computer == 2 {
            labelPlay2.text = "Papel"
            labelResult.text = "Empate"
            placarT += 1
            labelScore3.text = String(placarT)
        }else if computer == 0 {
            labelPlay2.text = "Pedra"
            labelResult.text = "Você ganhou!"
            placarP += 1
            labelScore1.text = String(placarP)
        }else{
            labelPlay2.text = "Tesoura"
            labelResult.text = "Você perdeu!"
            placarC += 1
            labelScore2.text = String(placarC)
        }
        
    }
    
    
        
    
    @IBAction func buttonStone(_ sender: UIButton) {
       
        
        labelPlay1.isHidden = false
        labelPlay2.isHidden = false
        firstPlay()
        
        
    }
    
    
    @IBAction func buttonScissors(_ sender: UIButton) {
        
        labelPlay1.isHidden = false
        labelPlay2.isHidden = false
        secondPlay()
        
    }
    
    
    @IBAction func buttonPaper(_ sender: UIButton) {
        
        labelPlay1.isHidden = false
        labelPlay2.isHidden = false
        thirdPlay()
    }
    
}

        
