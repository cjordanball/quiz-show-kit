//
//  ViewController.swift
//  Quiz Show
//
//  Created by C. Jordan Ball III on 6/21/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    var quizBrain = QuizBrain();
    
    override func viewDidLoad() {
        scoreLabel.text = "Get Ready!";
//        updateUI();
    }
    
    
    
   


}

