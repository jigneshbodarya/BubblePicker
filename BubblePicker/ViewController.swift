//
//  ViewController.swift
//  BubblePicker
//
//  Created by Jignesh on 04/04/17.
//  Copyright © 2017 Jignesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource{

    var arrOptions1 = NSMutableArray()
    var arrOptions2 = NSMutableArray()
    var arrOptions3 = NSMutableArray()
    @IBOutlet weak var bubblePickerView:UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        arrOptions1.add("Obj1")
        arrOptions1.add("Obj2")
        arrOptions1.add("Obj3")
        arrOptions1.add("Obj4")
        arrOptions1.add("Obj5")
        arrOptions1.add("Obj6")
        arrOptions1.add("Obj7")
        
        arrOptions2.add("Obj1")
        arrOptions2.add("Obj2")
        arrOptions2.add("Obj3")
        arrOptions2.add("Obj4")
        arrOptions2.add("Obj5")
        arrOptions2.add("Obj6")
        arrOptions2.add("Obj7")
        
        arrOptions3.add("Obj1")
        arrOptions3.add("Obj2")
        arrOptions3.add("Obj3")
        arrOptions3.add("Obj4")
        arrOptions3.add("Obj5")
        arrOptions3.add("Obj6")
        arrOptions3.add("Obj7")
        
        //This line will no effects
        //https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/UIKitUICatalog/UIPickerView.html
//        self.bubblePickerView.showsSelectionIndicator = true;

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    /// PickerView Delegate methods
    ///
    /// - Parameters:
    ///   - pickerView:
    ///   - component: represent number of components
    /// - Returns: custmize view
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrOptions1.count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let v = UIView(frame: CGRect(x: 0, y: 0, width: 70, height: 70))
        v.layer.cornerRadius = v.frame.size.height/2
        v.layer.masksToBounds = true
        v.backgroundColor = UIColor.green
        
        let lblTitle = UILabel(frame:CGRect(x: 0, y: 0, width: 70, height: 21))
        lblTitle.textAlignment = NSTextAlignment.center
        if component == 0 {
            lblTitle.text = self.arrOptions1.object(at: row) as? String
        }
        if component == 1 {
            lblTitle.text = self.arrOptions2.object(at: row) as? String
        }
        if component == 2 {
            lblTitle.text = self.arrOptions3.object(at: row) as? String
        }
        lblTitle.center = v.center
        v.addSubview(lblTitle)
        
        return v;
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 40
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0 {
                print("Componenet 1:",self.arrOptions1.object(at: row))
        }
        if component == 1 {
            print("Componenet 2:",self.arrOptions2.object(at: row))
        }
        if component == 2 {
            print("Componenet 3:",self.arrOptions3.object(at: row))
        }

    }

}

