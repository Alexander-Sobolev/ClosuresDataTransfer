//
//  ViewController.swift
//  ClosuresDelegate
//
//  Created by Alexander Sobolev on 20.06.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainimage: UIImageView!
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        result.isHidden = true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSVC" {
            guard let secondVC = segue.destination as? SecondViewController else { return }
            
            secondVC.comletion = { [weak self] text, image in
                guard let self = self else { return }
                self.mainimage.image = image
                self.result.isHidden = false
                self.result.text = text
                
            }
            
        }
        
    }
    
}
