//
//  ViewController.swift
//  Ask Me
//
//  Created by Saleh Majıdov on 1/22/18.
//  Copyright © 2018 Saleh Majıdov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   var randomBallNumber : Int = 0
    let ballArry = ["ball1","ball2","ball3","ball4","ball5"]
    
    @IBOutlet weak var askmeImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       viewDidload()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func askmeBtn(_ sender: UIButton) {
        viewDidload()
    }
    
    func viewDidload(){
      
        randomBallNumber = Int(arc4random_uniform(4))
        
        askmeImage.image = UIImage(named: ballArry[randomBallNumber])
    }
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        viewDidload()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        viewDidload()
    }

}

