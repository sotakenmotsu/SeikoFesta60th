//
//  ExhibitionViewController.swift
//  SeikoFesta60th
//
//  Created by 剱物蒼太 on 2019/03/22.
//  Copyright © 2019年 剱物蒼太. All rights reserved.
//

import UIKit

class ExhibitionViewController: UIViewController {
    
    @IBOutlet weak var Kirikae: UISegmentedControl!
    @IBOutlet var Floor: UIScrollView!
    @IBOutlet var Aiueo: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //階数別と50音順画面のフレームを取得
        super.didReceiveMemoryWarning()
        Floor.frame = CGRect(x: 0,y: Kirikae.frame.minY + Kirikae.frame.height,
                             width: self.view.frame.width,
                             height: (self.view.frame.height - Kirikae.frame.minY))
        Aiueo.frame = CGRect(x: 0,y: Kirikae.frame.minY + Kirikae.frame.height,
                             width: self.view.frame.width,
                             height: (self.view.frame.height - Kirikae.frame.minY))
        //デフォルトの表示
        self.view.addSubview(Floor)
    }
    
    override func didReceiveMemoryWarning() {
    }
   //以下切り替えの定義
    func addFloor() {
        Aiueo.removeFromSuperview()
        self.view.addSubview(Floor)
    }
    func addAiueo() {
        Floor.removeFromSuperview()
        self.view.addSubview(Aiueo)
    }
    @IBAction func Itiranchange(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0: addFloor()
        case 1: addAiueo()
        default: addFloor()
        }
    }
}
