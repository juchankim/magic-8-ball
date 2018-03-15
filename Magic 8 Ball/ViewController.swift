//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Juchan Kim on 3/14/18.
//  Copyright © 2018 Juchan Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let ballArray = ["ball1","ball2","ball3","ball4", "ball5"]
    var randomBallNumber : Int = 0
    @IBOutlet weak var ballImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func updateImage() {
        randomBallNumber = Int(arc4random_uniform(5))
        ballImage.image = UIImage(named: ballArray[randomBallNumber])
        
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateImage()
    }
}

