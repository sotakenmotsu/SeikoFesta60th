//
//  QuizsViewController.swift
//  SeikoFesta60th
//
//  Created by 剱物蒼太 on 2019/03/28.
//  Copyright © 2019年 剱物蒼太. All rights reserved.
//

import UIKit

class QuizsViewController: UIViewController {
    
    @IBOutlet var q1circle: UIImageView!
    @IBOutlet var q2circle: UIImageView!
    @IBOutlet var q3circle: UIImageView!
    @IBOutlet var q4circle: UIImageView!
    @IBOutlet var q5circle: UIImageView!
    @IBOutlet var q6circle: UIImageView!
    @IBOutlet var q7circle: UIImageView!
    @IBOutlet var q8circle: UIImageView!
    @IBOutlet var q9circle: UIImageView!
    @IBOutlet var q10circle: UIImageView!
    @IBOutlet var q11circle: UIImageView!
    @IBOutlet var q12circle: UIImageView!
    @IBOutlet var q13circle: UIImageView!
    @IBOutlet var q14circle: UIImageView!
    @IBOutlet var q15circle: UIImageView!
    @IBOutlet var q16circle: UIImageView!
    let userDefaults = UserDefaults.standard
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var baseView: UIView!
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let contentWidth = scrollView.bounds.width
        let contentHeight = baseView.bounds.height*1.5
        scrollView.contentSize = CGSize(width: contentWidth, height: contentHeight)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if userDefaults.object(forKey: "q1answered") == nil {
            q1circle.isHidden = true
        } else {
            q1circle.isHidden = false
        }
        if userDefaults.object(forKey: "q2answered") == nil {
            q2circle.isHidden = true
        } else {
            q2circle.isHidden = false
        }
        if userDefaults.object(forKey: "q3answered") == nil {
            q3circle.isHidden = true
        } else {
            q3circle.isHidden = false
        }
        if userDefaults.object(forKey: "q4answered") == nil {
            q4circle.isHidden = true
        } else {
            q4circle.isHidden = false
        }
        if userDefaults.object(forKey: "q5answered") == nil {
            q5circle.isHidden = true
        } else {
            q5circle.isHidden = false
        }
        if userDefaults.object(forKey: "q6answered") == nil {
            q6circle.isHidden = true
        } else {
            q6circle.isHidden = false
        }
        if userDefaults.object(forKey: "q7answered") == nil {
            q7circle.isHidden = true
        } else {
            q7circle.isHidden = false
        }
        if userDefaults.object(forKey: "q8answered") == nil {
            q8circle.isHidden = true
        } else {
            q8circle.isHidden = false
        }
        if userDefaults.object(forKey: "q9answered") == nil {
            q9circle.isHidden = true
        } else {
            q9circle.isHidden = false
        }
        if userDefaults.object(forKey: "q10answered") == nil {
            q10circle.isHidden = true
        } else {
            q10circle.isHidden = false
        }
        if userDefaults.object(forKey: "q11answered") == nil {
            q11circle.isHidden = true
        } else {
            q11circle.isHidden = false
        }
        if userDefaults.object(forKey: "q12answered") == nil {
            q12circle.isHidden = true
        } else {
            q12circle.isHidden = false
        }
        if userDefaults.object(forKey: "q13answered") == nil {
            q13circle.isHidden = true
        } else {
            q13circle.isHidden = false
        }
        if userDefaults.object(forKey: "q14answered") == nil {
            q14circle.isHidden = true
        } else {
            q14circle.isHidden = false
        }
        if userDefaults.object(forKey: "q15answered") == nil {
            q15circle.isHidden = true
        } else {
            q15circle.isHidden = false
        }
        if userDefaults.object(forKey: "q16answered") == nil {
            q16circle.isHidden = true
        } else {
            q16circle.isHidden = false
        }
        
    }

}
