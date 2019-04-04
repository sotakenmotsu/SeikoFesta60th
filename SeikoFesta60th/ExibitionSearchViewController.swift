//
//  ExibitionSearchViewController.swift
//  SeikoFesta60th
//
//  Created by Takayuki_Inoue on 2019/04/03.
//  Copyright © 2019 剱物蒼太. All rights reserved.
//

import UIKit

class ExibitionSearchViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {
    @IBOutlet weak var Floorsearch: UITextField!
    @IBOutlet weak var tousearch: UITextField!
    @IBOutlet weak var kategorisearch: UITextField!
    var floorselect: UIPickerView = UIPickerView()
    let floorlist = ["分からない","1階","2階","3階","4階"]
    var touselect: UIPickerView = UIPickerView()
    let toulist = ["分からない","中学棟","高校棟","その他"]
    var kategoriselect: UIPickerView = UIPickerView()
    let kategorilist = ["分からない","遊びたい","見たい"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //テキストフィールドとピッカービューを組み合わせる
        floorselect.delegate = self
        floorselect.dataSource = self
        floorselect.showsSelectionIndicator = true
        floorselect.tag = 1
        touselect.delegate = self
        touselect.dataSource = self
        touselect.showsSelectionIndicator = true
        touselect.tag = 2
        kategoriselect.delegate = self
        kategoriselect.dataSource = self
        kategoriselect.showsSelectionIndicator = true
        kategoriselect.tag = 3
        
        let toolbar = UIToolbar(frame: CGRect(x:0, y:0,width:0,height:35))
        let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(ExibitionSearchViewController.done))
        toolbar.setItems([doneItem], animated: true)
        
        let toolbarsecond = UIToolbar(frame: CGRect(x:0, y:0,width:0,height:35))
        let doneItemsecond = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(ExibitionSearchViewController.donesecond))
        toolbarsecond.setItems([doneItemsecond], animated: true)
        
        let toolbarthird = UIToolbar(frame: CGRect(x:0, y:0,width:0,height:35))
        let doneItemthird = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(ExibitionSearchViewController.donethird))
        toolbarthird.setItems([doneItemthird], animated: true)
        
        self.Floorsearch.inputView = floorselect
        self.Floorsearch.inputAccessoryView = toolbar
        
        self.tousearch.inputView = touselect
        self.tousearch.inputAccessoryView = toolbarsecond
        
        self.kategorisearch.inputView = kategoriselect
        self.kategorisearch.inputAccessoryView = toolbarthird
        
        floorselect.numberOfRows(inComponent: 0)
        touselect.numberOfRows(inComponent: 0)
        kategoriselect.numberOfRows(inComponent: 0)
    }
    override func prepare( for segue: UIStoryboardSegue, sender: Any!) {
        //検索結果を表示するビューに値を引き渡す
        if segue.identifier == "searchresult" {
            
            let secondViewController:ExibitionResultViewController = segue.destination as! ExibitionResultViewController
                secondViewController.sendText = self.Floorsearch.text
                secondViewController.sendText2 = self.tousearch.text
                secondViewController.sendText3 = self.kategorisearch.text
        }
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1 {
            return floorlist.count
        }else{
            if pickerView.tag == 2 {
                return toulist.count
            }else{
                return kategorilist.count
            }
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if pickerView.tag == 1 {
            return floorlist[row]
        }else{
            if pickerView.tag == 2 {
                return toulist[row]
            }else{
                return kategorilist[row]
            }
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 1 {
            self.Floorsearch.text = floorlist[row]
        }else{
            if pickerView.tag == 2 {
                self.tousearch.text = toulist[row]
            }else{
                self.kategorisearch.text = kategorilist[row]
            }
        }
    }
    
    @objc func done() {
        self.Floorsearch.endEditing(true)
    }
    
    @objc func donesecond() {
        self.tousearch.endEditing(true)
    }
    
    @objc func donethird() {
        self.kategorisearch.endEditing(true)
    }
}
