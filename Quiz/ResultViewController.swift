//
//  ResultViewController.swift
//  Quiz
//
//

import UIKit

class ResultViewController: UIViewController {
    var correctAnswer:Int = 0
    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var hanteiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        resultLabel.text = "38問中　\(correctAnswer)問正解"
        
        if correctAnswer == 38 {
            hanteiLabel.text = "PERFECT!"
        }else if correctAnswer >= 28 {
            hanteiLabel.text = "GOOD"
        } else {
            hanteiLabel.text = "BAD"
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
