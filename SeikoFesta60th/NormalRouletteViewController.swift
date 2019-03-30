//
//  NormalRouletteViewController.swift
//  SeikoFesta60th
//
//  Created by 剱物蒼太 on 2019/03/31.
//  Copyright © 2019 剱物蒼太. All rights reserved.
//

import UIKit

class NormalRouletteViewController: UIViewController {
    
    @IBOutlet var rouletteImage: UIImageView!
    var timer: Timer!
    var number: Int = 0


    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        let animation = CABasicAnimation(keyPath: "transform.rotation")
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        animation.toValue = .pi * 2.0
        animation.duration = 0.2
        animation.repeatCount = Float.infinity
        animation.isCumulative = true
        rouletteImage.layer.add(animation, forKey: "ImageViewRotation")
        timer = Timer.scheduledTimer(timeInterval: 0.02, target: self, selector: #selector(NormalRouletteViewController.update), userInfo: nil, repeats: true)
    }
    
    @objc func update() {
        if number == 0 {
            number = 1
        } else if number == 1 {
            number = 2
        } else if number == 2 {
            number = 3
        } else if number == 3 {
            number = 4
        } else if number == 4 {
            number = 5
        } else if number == 5 {
            number = 6
        } else if number == 6 {
            number = 7
        } else if number == 7 {
            number = 8
        } else if number == 8 {
            number = 9
        } else if number == 9 {
            number = 0
        }
    }
    
    @IBAction func stopButton() {
        let pausedTime = rouletteImage.layer.convertTime(CACurrentMediaTime(), from: nil)
        rouletteImage.layer.speed = 0.0
        rouletteImage.layer.timeOffset = pausedTime
        timer.invalidate()
        print(number)
        if number == 1 || number == 2 || number == 3 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                self.move4PResult()
            }
        } else if number == 0 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                self.move6PResult()
            }
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                self.move2PResult()
            }
        }
    }
    
    func move2PResult() {
        self.performSegue(withIdentifier: "2Pview", sender: nil)
    }
    
    func move4PResult() {
        self.performSegue(withIdentifier: "4Pview", sender: nil)
    }
    
    func move6PResult() {
        self.performSegue(withIdentifier: "6Pview", sender: nil)
    }
    

}
