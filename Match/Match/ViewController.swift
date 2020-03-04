//
//  ViewController.swift
//  Match
//
//  Created by Weber, Olivia G on 2/26/20.
//  Copyright © 2020 Weber, Olivia G. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //variables
    
    var counter:Int = 15
    var timer = Timer()
    var isTimerRunning:Bool = false
    
    var score:Int = 0
    
    //outlets
    
    @IBOutlet weak var myGreeting: UILabel!
    
    @IBOutlet weak var myName: UITextField!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var myScore: UILabel!
    
    //actions
    
    
    @IBAction func myStar(_ sender: Any) {
        score = score + 1
        myScore.text = "Score: \(score)"
    }
    
    
    @IBAction func myShape(_ sender: Any) {
        score = score + 5
        myScore.text = "Score: \(score)"
    }
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func myButton(_ sender: Any) {
        let name = myName.text!
        myGreeting.text = "Hello \(name)"
                
        myName.resignFirstResponder()
        
    }
    
    func runTimer() {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimer)), userInfo: nil, repeats: true)
            isTimerRunning = true
                }
        
    @objc func updateTimer() {
            counter -= 1
            timerLabel.text = "\(counter)"
            if(counter == 0) {
                timerLabel.text = "Time's Up!"
                timer.invalidate()

            }
        }
    
    
    @IBAction func myReset(_ sender: Any) {
        
        score = 0
               myScore.text = "Score: \(score)"
               timer.invalidate()
               counter = 15
               timerLabel.text = "\(counter)"
               isTimerRunning = false
        
        
    }
    
    
    @IBAction func startGame(_ sender: Any) {
        if isTimerRunning == false {
            runTimer()
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myGreeting.text = "Hello"
    }


}

