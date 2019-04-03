//
//  FifthViewController.swift
//  IOSApp
//
//  Created by fortude on 3/29/19.
//  Copyright © 2019 PamodyaD. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

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
    
    
    @IBAction func convertMeterSec(_ sender: Any) {
        kmhValue.text = String(format: "%.4f", Double(meterSecValue.text!)! * 3.6)
        milesHourValue.text = String(format: "%.4f", Double(meterSecValue.text!)!  * 2.237)
        nauticalMilesHourValue.text = String(format: "%.4f", Double(meterSecValue.text!)! * 1.944)
    }
    
    @IBAction func convertKmH(_ sender: Any) {
        meterSecValue.text = String(format: "%.4f", Double(kmhValue.text!)! / 3.6)
        milesHourValue.text = String(format: "%.4f", Double(kmhValue.text!)!  / 1.609)
        nauticalMilesHourValue.text = String(format: "%.4f", Double(kmhValue.text!)! / 1.852)
    }
    
    @IBAction func convertMilesHour(_ sender: Any) {
        meterSecValue.text = String(format: "%.4f", Double(milesHourValue.text!)! / 2.237)
        kmhValue.text = String(format: "%.4f", Double(milesHourValue.text!)!  * 1.609)
        nauticalMilesHourValue.text = String(format: "%.4f", Double(milesHourValue.text!)! / 1.151)
    }
    
    
    @IBAction func convertNauMilesHour(_ sender: Any) {
        meterSecValue.text = String(format: "%.4f", Double(nauticalMilesHourValue.text!)! / 1.944)
        kmhValue.text = String(format: "%.4f", Double(nauticalMilesHourValue.text!)!  * 1.852)
        milesHourValue.text = String(format: "%.4f", Double(nauticalMilesHourValue.text!)! * 1.852)
    }
    
    func checkArrList(){
        
        if(GlobalVar.GlobalSpeed.speedArr.endIndex >= 5){
            GlobalVar.GlobalSpeed.speedArr.remove(at: 0)
        }
    }
    
    
    @IBAction func saveSpeed(_ sender: Any) {
        checkArrList()
        var value: String = "\(meterSecValue.text!)m/s = \(kmhValue.text!)km/h = \(milesHourValue.text!)mile/h = \(nauticalMilesHourValue.text!)nMile/h"
        GlobalVar.GlobalSpeed.speedArr.append(value)
    }
}
