//
//  ViewController.swift
//  mmm
//
//  Created by Karan Gandhi on 2/15/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var labelOutput: UILabel!
    
    var timer = Timer()
    let eggTimes = ["Soft" : 3, "Medium": 5 , "Hard" : 10]
    var totalTime = 0
    var secondsPassed = 0
 
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
     
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        
        
        progressView.progress = 0.0
        secondsPassed = 0
        
        labelOutput.text = hardness
        
        timer =
            Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
        
        
        
    }
    
    @objc func updateCounter() {
        //example functionality
        if secondsPassed < totalTime {
            secondsPassed +=  1
            progressView.progress = Float(secondsPassed)/Float(totalTime)
            
        }
    
        else{
            timer.invalidate()
            labelOutput.text = "Done!"
        }
    
    
    

}

}
