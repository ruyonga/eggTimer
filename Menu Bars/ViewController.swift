//
//  ViewController.swift
//  Menu Bars
//
//  Created by Ruyonga Daniel on 25/10/2017.
//  Copyright © 2017 Ruyonga Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timerLabel: UILabel!
    
    var timer = Timer()
    var time = 210

    @objc func decreaseTimer(){
        if time > 0{
        time -= 1
            timerLabel.text = String(time)
            
        }else{
            timer.invalidate()
        }
    }
    
    @IBAction func pauseBtn(_ sender: Any) {
          timer.invalidate()
    }
    
    @IBAction func playButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func plusTen(_ sender: Any) {
        time += 10
        timerLabel.text = String(time)
    }
    
    @IBAction func resetBtn(_ sender: Any) {
        time = 210
        timerLabel.text = String(time)
    }
    
    @IBAction func minusTen(_ sender: Any) {
        if time > 10{
            time -= 10
            timerLabel.text = String(time)
        }
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
    
    }

    override func viewWillAppear(_ animated: Bool) {
        
//        timer = Timer.scheduledTimer(timeInterval: 1, target: self,
//                                     selector:Selector("processTimer"), userInfo: nil, repeats: true)
//        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

