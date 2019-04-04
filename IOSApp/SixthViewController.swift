//
//  SixthViewController.swift
//  IOSApp
//
//  Created by fortude on 3/29/19.
//  Copyright © 2019 PamodyaD. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController {

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

    
    
    @IBOutlet weak var gallonValue: UITextField!
    
    @IBOutlet weak var literValue: UITextField!
    
    
    @IBOutlet weak var ukPintValue: UITextField!
    
    
    @IBOutlet weak var fluidOunceValue: UITextField!
    
    
    @IBOutlet weak var mililiterValue: UITextField!
    
    
    @IBAction func converGallons(_ sender: Any) {
        literValue.text = String(format: "%.4f", Double(gallonValue.text!)! * 3.785)
        ukPintValue.text = String(format: "%.4f", Double(gallonValue.text!)!  * 6.661)
        fluidOunceValue.text = String(format: "%.4f", Double(gallonValue.text!)! * 133.228)
        mililiterValue.text = String(format: "%.4f", Double(gallonValue.text!)! * 3785.412)
    }
    
    
    @IBAction func convertLiter(_ sender: Any) {
        gallonValue.text = String(format: "%.4f", Double(literValue.text!)! / 4.546)
        ukPintValue.text = String(format: "%.4f", Double(literValue.text!)!  * 1.76)
        fluidOunceValue.text = String(format: "%.4f", Double(literValue.text!)! * 33.814)
        mililiterValue.text = String(format: "%.4f", Double(literValue.text!)! * 1000.0)
    }
    
    @IBAction func convertUkPint(_ sender: Any) {
        gallonValue.text = String(format: "%.4f", Double(ukPintValue.text!)! / 8.0)
        literValue.text = String(format: "%.4f", Double(ukPintValue.text!)!  / 1.76)
        fluidOunceValue.text = String(format: "%.4f", Double(ukPintValue.text!)! * 20)
        mililiterValue.text = String(format: "%.4f", Double(ukPintValue.text!)! * 568.261)
    }
    
    
    @IBAction func convertFluidOunce(_ sender: Any) {
        gallonValue.text = String(format: "%.4f", Double(fluidOunceValue.text!)! / 160.0)
        literValue.text = String(format: "%.4f", Double(fluidOunceValue.text!)!  / 35.195)
        ukPintValue.text = String(format: "%.4f", Double(fluidOunceValue.text!)! / 20)
        mililiterValue.text = String(format: "%.4f", Double(fluidOunceValue.text!)! * 28.413)
    }
    
    @IBAction func convertMililiter(_ sender: Any) {
        gallonValue.text = String(format: "%.4f", Double(mililiterValue.text!)! / 4546.09)
        literValue.text = String(format: "%.4f", Double(mililiterValue.text!)!  / 1000.0)
        ukPintValue.text = String(format: "%.4f", Double(mililiterValue.text!)! / 568.261)
        fluidOunceValue.text = String(format: "%.4f", Double(mililiterValue.text!)! / 28.413)
        
    }
    
    func checkArrList(){
        
        if(GlobalVar.GlobalVolume.volumeArr.endIndex >= 5){
            GlobalVar.GlobalVolume.volumeArr.remove(at: 0)
        }
    }

    
    @IBAction func saveVolume(_ sender: Any) {
        checkArrList()
        var value: String = "\(gallonValue.text!)gal = \(literValue.text!)l = \(ukPintValue.text!)pint = \(fluidOunceValue.text!)ounces = \(mililiterValue.text!)ml"
        GlobalVar.GlobalVolume.volumeArr.append(value)
    }
}
