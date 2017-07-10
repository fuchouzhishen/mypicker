//
//  ViewController.swift
//  mypicker
//
//  Created by clm on 2017/7/10.
//  Copyright © 2017年 clm. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    @IBOutlet weak var pPicker: UIPickerView!
    @IBOutlet weak var iPicker: UIPickerView!
    @IBOutlet weak var dPicker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pPicker.dataSource = self
        pPicker.delegate = self
        iPicker.dataSource = self
        iPicker.delegate = self
        dPicker.dataSource = self
        dPicker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 4
    }
    
    //设置选择框的行数为9行，继承于UIPickerViewDataSource协议
    func pickerView(_ pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
    //设置选择框各选项的内容，继承于UIPickerViewDelegate协议
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int,
                    forComponent component: Int) -> String? {
        return String(row)
    }


}

