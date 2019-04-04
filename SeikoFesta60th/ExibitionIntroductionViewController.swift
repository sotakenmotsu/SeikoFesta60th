//
//  ExibitionIntroductionViewController.swift
//  SeikoFesta60th
//
//  Created by Takayuki_Inoue on 2019/04/03.
//  Copyright © 2019 剱物蒼太. All rights reserved.
//

import UIKit

class ExibitionIntroductionViewController: UIViewController {
    @IBAction func comeHome (segue: UIStoryboardSegue){
    }
    @IBOutlet weak var changer: UIView!
    @IBOutlet weak var intro: UIView!
    @IBOutlet weak var map: UIView!
    var containers: Array<UIView> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        containers = [intro,map]
        changer.bringSubviewToFront(intro)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func mapsyokaichange(_ sender: UISegmentedControl) {
        let currentContainerView = containers[sender.selectedSegmentIndex]
        changer.bringSubviewToFront(currentContainerView)
    }
    
}
