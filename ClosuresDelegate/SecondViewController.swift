//
//  SecondViewController.swift
//  ClosuresDelegate
//
//  Created by Alexander Sobolev on 20.06.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    private let neo = UIImage(named: "neo")
    private let agentSmith = UIImage(named: "agentSmith")
    private let trueText = "Вы узнали правду"
    private let falseText = "Вы не узнали правду"
    
    var comletion: ((String, UIImage?) -> ())?

    @IBOutlet weak var redButton: UIButton!
    
    @IBOutlet weak var blueButton: UIButton!
    
    @IBAction func blueTapped(_ sender: UIButton) {
        
        comletion?(falseText, agentSmith)
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func redTapped(_ sender: UIButton) {
        comletion?(trueText, neo)
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup(button: redButton)
        setup(button: blueButton)
        

    }
    
    func setup(button: UIButton){
        button.layer.cornerRadius = 30
        button.layer.borderWidth = 10
        button.layer.borderColor = UIColor.clear.cgColor
    }

   
}
