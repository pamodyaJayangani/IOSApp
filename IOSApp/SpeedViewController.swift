//
//  FifthViewController.swift
//  IOSApp
//
//  Created by fortude on 3/29/19.
//  Copyright © 2019 PamodyaD. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBOutlet weak var meterSecValue: UITextField!
    
    @IBOutlet weak var kmhValue: UITextField!
    
    @IBOutlet weak var milesHourValue: UITextField!
    
    @IBOutlet weak var nauticalMilesHourValue: UITextField!
    
    func clearData(){
        meterSecValue.text = ""
        kmhValue.text = ""
        milesHourValue.text = ""
        nauticalMilesHourValue.text = ""
        
    }
    
    /* Convert speed Values */
    @IBAction func convertMeterSec(_ sender: Any) {
        if let _ = meterSecValue.text, !(meterSecValue.text?.isEmpty)! {
            kmhValue.text = String(format: "%.4f", Double(meterSecValue.text!)! * 3.6)
            milesHourValue.text = String(format: "%.4f", Double(meterSecValue.text!)!  * 2.237)
            nauticalMilesHourValue.text = String(format: "%.4f", Double(meterSecValue.text!)! * 1.944)
        }else{
            clearData()
        }
    }
    
    @IBAction func convertKmH(_ sender: Any) {
        if let _ = kmhValue.text, !(kmhValue.text?.isEmpty)! {
            meterSecValue.text = String(format: "%.4f", Double(kmhValue.text!)! / 3.6)
            milesHourValue.text = String(format: "%.4f", Double(kmhValue.text!)!  / 1.609)
            nauticalMilesHourValue.text = String(format: "%.4f", Double(kmhValue.text!)! / 1.852)
        }else{
            clearData()
        }
    }
    
    @IBAction func convertMilesHour(_ sender: Any) {
        if let _ = milesHourValue.text, !(milesHourValue.text?.isEmpty)! {
            meterSecValue.text = String(format: "%.4f", Double(milesHourValue.text!)! / 2.237)
            kmhValue.text = String(format: "%.4f", Double(milesHourValue.text!)!  * 1.609)
            nauticalMilesHourValue.text = String(format: "%.4f", Double(milesHourValue.text!)! / 1.151)
        }else{
            clearData()
        }
    }
    
    
    @IBAction func convertNauMilesHour(_ sender: Any) {
        if let _ = nauticalMilesHourValue.text, !(nauticalMilesHourValue.text?.isEmpty)! {
            meterSecValue.text = String(format: "%.4f", Double(nauticalMilesHourValue.text!)! / 1.944)
            kmhValue.text = String(format: "%.4f", Double(nauticalMilesHourValue.text!)!  * 1.852)
            milesHourValue.text = String(format: "%.4f", Double(nauticalMilesHourValue.text!)! * 1.852)
        }else{
            clearData()
        }
    }
    
    /* Check Array length */
    func checkArrList(){
        if(GlobalVar.GlobalSpeed.speedArr.endIndex >= 5){
            GlobalVar.GlobalSpeed.speedArr.remove(at: 0)
        }
    }
    
    /* Save Speed */
    @IBAction func saveSpeed(_ sender: Any) {
        checkArrList()
        var value: String = "\(meterSecValue.text!)m/s = \(kmhValue.text!)km/h = \(milesHourValue.text!)mile/h = \(nauticalMilesHourValue.text!)nMile/h"
        
        if let _ = UserDefaults.standard.array(forKey: "speedArr"), (GlobalVar.GlobalSpeed.speedArr.count == 0){
            for i in 0..<(UserDefaults.standard.array(forKey: "speedArr")?.count)!{
                GlobalVar.GlobalSpeed.speedArr.append(UserDefaults.standard.array(forKey: "speedArr")?[i] as! String)
            }
        }
        checkArrList()
        GlobalVar.GlobalSpeed.speedArr.append(value)
        
        UserDefaults.standard.set(GlobalVar.GlobalSpeed.speedArr, forKey: "speedArr")
    }

 
}
