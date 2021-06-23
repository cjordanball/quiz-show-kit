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
        super.viewDidLoad();
        scoreLabel.text = "Get Ready!";
        updateUI();
    }
    
    func updateUI() -> Void {
        questionLabel.text = quizBrain.getQuestionText();
        trueButton.backgroundColor = UIColor.clear;
        trueButton.layer.cornerRadius = 20;
        falseButton.backgroundColor = UIColor.clear;
        falseButton.layer.cornerRadius = 20;
        progressBar.progress = quizBrain.getProgress();
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!;
        let userGotItRight = quizBrain.checkAnswer(userAnswer);
        
        if (userGotItRight[0]) {
            sender.backgroundColor = UIColor.green;
        } else {
            sender.backgroundColor = UIColor.red;
        }
        scoreLabel.text = "Score: \(quizBrain.getCorrect())";
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { timer in
            self.quizBrain.nextQuestion();
            if (!userGotItRight[1]) {
                self.updateUI();
            }
        }
        if (userGotItRight[1]) {
            self.scoreLabel.text = "Game Over"
            questionLabel.text = "Nice Effort: You got \(quizBrain.getCorrect()) questions out of \(quizBrain.quiz.count) correct!"
            
            trueButton.removeFromSuperview();
            falseButton.removeFromSuperview();
            
        }
    }
    
    
}

