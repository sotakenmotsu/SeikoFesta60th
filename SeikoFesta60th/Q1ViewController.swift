//
//  Q1ViewController.swift
//  SeikoFesta60th
//
//  Created by 剱物蒼太 on 2019/03/31.
//  Copyright © 2019 剱物蒼太. All rights reserved.
//

import UIKit

class Q1ViewController: UIViewController {
    
    @IBOutlet var answerTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true

    }
    
    @IBAction func answer() {
        if answerTextField.text == "せいこうさい" {
            self.showCorrectAlert()
        } else {
            self.showMistakeAlert()
        }
    }
    
    func showCorrectAlert() {
        let alert = UIAlertController(title: "正解！", message:"ガチャ画面へ移ります", preferredStyle: UIAlertController.Style.alert)
        let ok = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action: UIAlertAction) in
            self.performSegue(withIdentifier: "normalGatya", sender: nil)
        } )
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    
    func showMistakeAlert() {
        
    }


}
