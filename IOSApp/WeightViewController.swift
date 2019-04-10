//
//  SecondViewController.swift
//  IOSApp
//
//  Created by fortude on 3/29/19.
//  Copyright © 2019 PamodyaD. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func checkArrList(){
        if(GlobalVar.GlobalArr.arr.endIndex >= 5){

            GlobalVar.GlobalArr.arr.remove(at: 0)
        }
    }

    
    @IBOutlet weak var kgValue: UITextField!
    @IBOutlet weak var gramValue: UITextField!
    @IBOutlet weak var ouncesValue: UITextField!
    @IBOutlet weak var poundsValue: UITextField!
    @IBOutlet weak var stonePoundsValue: UITextField!
    
    func clearData(){
        kgValue.text = ""
        gramValue.text = ""
        ouncesValue.text = ""
        poundsValue.text = ""
        stonePoundsValue.text = ""
    }
    
    @IBAction func convertKg(_ sender: Any) {
        if let value = kgValue.text, !(kgValue.text?.isEmpty)! {
            gramValue.text = String(format: "%.4f", Double(value)! * 1000)
            ouncesValue.text = String(format: "%.4f", Double(value)! * 35.274)
            poundsValue.text = String(format: "%.4f", Double(value)! * 2.205)
            stonePoundsValue.text = String(format: "%.4f", Double(value)! / 6.35)
        } else {
            clearData()
        }
    }
    @IBAction func convertGrams(_ sender: Any) {
        if let value = gramValue.text, !(gramValue.text?.isEmpty)! {
            kgValue.text = String(format: "%.4f", Double(gramValue.text!)! / 1000)
            ouncesValue.text = String(format: "%.4f", Double(gramValue.text!)! / 28.35)
            poundsValue.text = String(format: "%.4f", Double(gramValue.text!)!  / 453.592)
            stonePoundsValue.text = String(format: "%.4f", Double(gramValue.text!)! / 6350.293)
        }else{
            clearData()
        }
    }
    
    @IBAction func convertOunces(_ sender: Any) {
         if let value = ouncesValue.text, !(ouncesValue.text?.isEmpty)! {
                kgValue.text = String(format: "%.4f", Double(ouncesValue.text!)! / 35.274)
                gramValue.text = String(format: "%.4f", Double(ouncesValue.text!)! * 28.35)
                poundsValue.text = String(format: "%.4f", Double(ouncesValue.text!)!  / 16.0)
                stonePoundsValue.text = String(format: "%.4f", Double(ouncesValue.text!)! / 224.0)
         }else{
            clearData()
        }
        
    }
    
    @IBAction func convertPounds(_ sender: Any) {
       if let value = poundsValue.text, !(poundsValue.text?.isEmpty)! {
            kgValue.text = String(format: "%.4f", Double(poundsValue.text!)! / 2.205)
            gramValue.text = String(format: "%.4f", Double(poundsValue.text!)! * 453.592)
            ouncesValue.text = String(format: "%.4f", Double(poundsValue.text!)!  * 16.0)
            stonePoundsValue.text = String(format: "%.4f", Double(poundsValue.text!)! / 14.0)
       }else{
            clearData()
        }
    }
    
    @IBAction func convertStonePounds(_ sender: Any) {
        if let value = stonePoundsValue.text, !(stonePoundsValue.text?.isEmpty)! {
            kgValue.text = String(format: "%.4f", Double(stonePoundsValue.text!)! * 6.35)
            gramValue.text = String(format: "%.4f", Double(stonePoundsValue.text!)! * 6350.293)
            ouncesValue.text = String(format: "%.4f", Double(stonePoundsValue.text!)!  * 224.0)
            poundsValue.text = String(format: "%.4f", Double(stonePoundsValue.text!)! * 14.0)
        }else{
            clearData()
        }
    }
    
    
    @IBAction func saveKg(_ sender: Any) {
        
        let value:String = "\(kgValue.text!)kg=\(gramValue.text!)g=\(ouncesValue.text!)ounces=\(poundsValue.text!)pounds=\(stonePoundsValue.text!)stones"
        
                if let _ = UserDefaults.standard.array(forKey: "Arr"), (GlobalVar.GlobalArr.arr.count == 0){
                    for i in 0..<(UserDefaults.standard.array(forKey: "Arr")?.count)!{
                        GlobalVar.GlobalArr.arr.append(UserDefaults.standard.array(forKey: "Arr")?[i] as! String)
                    }
                }
        checkArrList()
        GlobalVar.GlobalArr.arr.append(value)
        UserDefaults.standard.set(GlobalVar.GlobalArr.arr, forKey: "Arr")
        
}

}
