//
//  ViewController.swift
//  BullsEye
//
//  Created by Picsart Academy on 26.06.23.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 50
    var targetValue = 0
    var score = 0
    var round = 0
    @IBOutlet var slider: UISlider!
    @IBOutlet var targetLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var roundLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        startNewGame()

    }
    
    @IBAction func info(_ sender: Any) {
        let title = "*** Bull’s Eye ***"
        let message = """
        Your goal is to place the slider as close as possible to the
        target value. The closer you are, the more points you score.
        Enjoy!
        """
        
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Ok",
                                   style: .default,
                                   handler: nil)
          
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func showAlert() {
        
        let difference = abs(currentValue - targetValue)
        var points = 100 - difference
        
        let title: String
        if difference == 0 {
          title = "Perfect!"
            points += 100
        } else if difference < 5 {
          title = "You almost had it!"
            if difference == 1 {
                points += 50
            }
        } else if difference < 10 {
          title = "Pretty good!"
        } else {
          title = "Not even close..."
        }
        score += points

        
        let message = "You scored \(points) points"
    
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)

        let action = UIAlertAction(title: "Ok",
                                   style: .default) { _ in
            self.startNewRound()
          }

        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func slideMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
        
    }

    func startNewRound() {
        round += 1
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
    
    @IBAction func startNewGame() {
        score = 0
        round = 0
        startNewRound()
    }
}
