//
//  ThirdViewController.swift
//  IOSApp
//
//  Created by fortude on 3/29/19.
//  Copyright © 2019 PamodyaD. All rights reserved.
//

import UIKit

class TemperatureViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBOutlet weak var celciusValue: UITextField!
    @IBOutlet weak var farenheitValue: UITextField!
    @IBOutlet weak var kelvinValue: UITextField!
    
    /* Clear empty values */
    func clearData(){
        celciusValue.text = ""
        farenheitValue.text = ""
        kelvinValue.text = ""
        
    }
    
    /* Convert Temperature */
    @IBAction func convertCelcius(_ sender: Any) {
        if let _ = celciusValue.text, !(celciusValue.text?.isEmpty)! {
            farenheitValue.text = String(format: "%.4f", (Double(celciusValue.text!)! * 9/5) + 32)
            kelvinValue.text = String(format: "%.4f", Double(celciusValue.text!)! + 273.15)
        }else{
            clearData()
        }
        
    }
    
    @IBAction func convertFarenheit(_ sender: Any) {
        if let _ = farenheitValue.text, !(farenheitValue.text?.isEmpty)! {
            celciusValue.text = String(format: "%.4f", (Double(farenheitValue.text!)! - 32) * 5/9)
            kelvinValue.text = String(format: "%.4f", (Double(farenheitValue.text!)! - 32) * 5/9 + 273.15)
        }else{
            clearData()
        }
    }
    
    @IBAction func convertKelvin(_ sender: Any) {
        if let _ = kelvinValue.text, !(kelvinValue.text?.isEmpty)! {
            celciusValue.text = String(format: "%.4f", Double(kelvinValue.text!)! - 273.15)
            farenheitValue.text = String(format: "%.4f", (Double(kelvinValue.text!)! - 273.15) * 9/5 + 32)
        }else{
            clearData()
        }
    }
    
    /* Check array length */
    func checkArrList(){

        if(GlobalVar.GlobalTemp.tempArr.endIndex >= 5){
            GlobalVar.GlobalTemp.tempArr.remove(at: 0)
        }
    }
    
    /* Save Temp Conversions */
    @IBAction func saveTemp(_ sender: Any) {
       var value: String = "\(celciusValue.text!)cel = \(farenheitValue.text!)far = \(kelvinValue.text!)K"
        
        if let _ = UserDefaults.standard.array(forKey: "tempArr"),GlobalVar.GlobalTemp.tempArr.count == 0{
            for i in 0..<(UserDefaults.standard.array(forKey: "tempArr")?.count)!{
                GlobalVar.GlobalTemp.tempArr.append(UserDefaults.standard.array(forKey: "tempArr")?[i] as! String)
            }
        }
        
        checkArrList()
        GlobalVar.GlobalTemp.tempArr.append(value)
        UserDefaults.standard.set(GlobalVar.GlobalTemp.tempArr, forKey: "tempArr")
    }
    
}
    
    

