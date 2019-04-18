//
//  ViewController.swift
//  PickerView02
//
//  Created by 김종현 on 18/04/2019.
//  Copyright © 2019 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myPickerView: UIPickerView!
    var color = ["red", "blue", "yellow"]
    var animal = ["mouse", "tiger", "cow", "cat", "pig"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // Delegate 클래스와 viewController 객체의 connection
        myPickerView.dataSource = self
        myPickerView.delegate = self
        myLabel.text = "red"
    }
    
    
    // UIPickerViewDataSource method : 필수 메소드는 반드시 오버라이딩 해여 함
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //return color.count
        if component == 0 {
            return color.count
        } else {
            return animal.count
        }
    }
    
    // UIPickerViewDelegate method
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return color[row]
        } else {
            return animal[row]
        }
    }

    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0 {
            print("row = \(row)")
            myLabel.text = color[row]
        } else {
            myLabel.text = animal[row]
        }
    }
    
//    public func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
//        return 100.0
//    }

}

