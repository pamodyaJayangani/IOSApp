//
//  SixthViewController.swift
//  IOSApp
//
//  Created by fortude on 3/29/19.
//  Copyright © 2019 PamodyaD. All rights reserved.
//

import UIKit

class VolumeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var gallonValue: UITextField!
    @IBOutlet weak var literValue: UITextField!
    @IBOutlet weak var ukPintValue: UITextField!
    @IBOutlet weak var fluidOunceValue: UITextField!
    @IBOutlet weak var mililiterValue: UITextField!
    
    /*Clear text fields */
    func clearData(){
        gallonValue.text = ""
        literValue.text = ""
        ukPintValue.text = ""
        fluidOunceValue.text = ""
        mililiterValue.text = ""
    }
    
    /* Convert Volume */
    @IBAction func converGallons(_ sender: Any) {
        if let _ = gallonValue.text, !(gallonValue.text?.isEmpty)! {
            literValue.text = String(format: "%.4f", Double(gallonValue.text!)! * 3.785)
            ukPintValue.text = String(format: "%.4f", Double(gallonValue.text!)!  * 6.661)
            fluidOunceValue.text = String(format: "%.4f", Double(gallonValue.text!)! * 133.228)
            mililiterValue.text = String(format: "%.4f", Double(gallonValue.text!)! * 3785.412)
        }else{
            clearData()
        }
    }
    
    
    @IBAction func convertLiter(_ sender: Any) {
        if let _ = literValue.text, !(literValue.text?.isEmpty)! {
            gallonValue.text = String(format: "%.4f", Double(literValue.text!)! / 4.546)
            ukPintValue.text = String(format: "%.4f", Double(literValue.text!)!  * 1.76)
            fluidOunceValue.text = String(format: "%.4f", Double(literValue.text!)! * 33.814)
            mililiterValue.text = String(format: "%.4f", Double(literValue.text!)! * 1000.0)
        }else{
            clearData()
        }
    }
    
    @IBAction func convertUkPint(_ sender: Any) {
        if let _ = ukPintValue.text, !(ukPintValue.text?.isEmpty)! {
            gallonValue.text = String(format: "%.4f", Double(ukPintValue.text!)! / 8.0)
            literValue.text = String(format: "%.4f", Double(ukPintValue.text!)!  / 1.76)
            fluidOunceValue.text = String(format: "%.4f", Double(ukPintValue.text!)! * 20)
            mililiterValue.text = String(format: "%.4f", Double(ukPintValue.text!)! * 568.261)
        }else{
            clearData()
        }
    }
    
    
    @IBAction func convertFluidOunce(_ sender: Any) {
        if let _ = fluidOunceValue.text, !(fluidOunceValue.text?.isEmpty)! {
            gallonValue.text = String(format: "%.4f", Double(fluidOunceValue.text!)! / 160.0)
            literValue.text = String(format: "%.4f", Double(fluidOunceValue.text!)!  / 35.195)
            ukPintValue.text = String(format: "%.4f", Double(fluidOunceValue.text!)! / 20)
            mililiterValue.text = String(format: "%.4f", Double(fluidOunceValue.text!)! * 28.413)
        }else{
            clearData()
        }
    }
    
    @IBAction func convertMililiter(_ sender: Any) {
        if let _ = mililiterValue.text, !(mililiterValue.text?.isEmpty)! {
            gallonValue.text = String(format: "%.4f", Double(mililiterValue.text!)! / 4546.09)
            literValue.text = String(format: "%.4f", Double(mililiterValue.text!)!  / 1000.0)
            ukPintValue.text = String(format: "%.4f", Double(mililiterValue.text!)! / 568.261)
            fluidOunceValue.text = String(format: "%.4f", Double(mililiterValue.text!)! / 28.413)
        }else{
            clearData()
        }
        
    }
    
    /* Check Array length */
    func checkArrList(){
        if(GlobalVar.GlobalVolume.volumeArr.endIndex >= 5){
            GlobalVar.GlobalVolume.volumeArr.remove(at: 0)
        }
    }

    /* Save Volume */
    @IBAction func saveVolume(_ sender: Any) {
        var value: String = "\(gallonValue.text!)gal = \(literValue.text!)l = \(ukPintValue.text!)pint = \(fluidOunceValue.text!)ounces = \(mililiterValue.text!)ml"
        
        if let _ = UserDefaults.standard.array(forKey: "volumeArr"), (GlobalVar.GlobalVolume.volumeArr.count == 0){
            for i in 0..<(UserDefaults.standard.array(forKey: "volumeArr")?.count)!{
                GlobalVar.GlobalVolume.volumeArr.append(UserDefaults.standard.array(forKey: "volumeArr")?[i] as! String)
            }
        }
        checkArrList()
        GlobalVar.GlobalVolume.volumeArr.append(value)
        UserDefaults.standard.set(GlobalVar.GlobalVolume.volumeArr, forKey: "volumeArr")
    }
}
