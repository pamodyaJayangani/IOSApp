//
//  FourthViewController.swift
//  IOSApp
//
//  Created by fortude on 3/29/19.
//  Copyright © 2019 PamodyaD. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

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
    @IBOutlet weak var meterValue: UITextField!
    
    @IBOutlet weak var mileValue: UITextField!
    
    @IBOutlet weak var centimeterValue: UITextField!
    
    @IBOutlet weak var milimeterValue: UITextField!
    
    @IBOutlet weak var yardValue: UITextField!
    
    @IBOutlet weak var inchValue: UITextField!
    
    @IBAction func convertMeter(_ sender: Any) {
        mileValue.text = String(format: "%.4f", Double(meterValue.text!)! / 1609.344)
        centimeterValue.text = String(format: "%.4f", Double(meterValue.text!)!  * 100.0)
        milimeterValue.text = String(format: "%.4f", Double(meterValue.text!)! * 1000.0)
        yardValue.text = String(format: "%.4f", Double(meterValue.text!)! * 1.094)
        inchValue.text = String(format: "%.4f", Double(meterValue.text!)! * 39.37)
    }
    
    @IBAction func convertMile(_ sender: Any) {
        meterValue.text = String(format: "%.4f", Double(mileValue.text!)! * 1609.344)
        centimeterValue.text = String(format: "%.4f", Double(mileValue.text!)!  * 160934.4)
        milimeterValue.text = String(format: "%.4f", Double(mileValue.text!)! * 1609344.4)
        yardValue.text = String(format: "%.4f", Double(mileValue.text!)! * 1760)
        inchValue.text = String(format: "%.4f", Double(mileValue.text!)! * 63360)
    }
    
    
    
    @IBAction func convertCemtimeter(_ sender: Any) {
        meterValue.text = String(format: "%.4f", Double(centimeterValue.text!)! / 100)
        mileValue.text = String(format: "%.4f", Double(centimeterValue.text!)!  / 160934.4)
        milimeterValue.text = String(format: "%.4f", Double(centimeterValue.text!)! * 10)
        yardValue.text = String(format: "%.4f", Double(centimeterValue.text!)! / 91.44)
        inchValue.text = String(format: "%.4f", Double(centimeterValue.text!)! / 2.54)
    }
    
    
    @IBAction func convertMilimeter(_ sender: Any) {
        meterValue.text = String(format: "%.4f", Double(milimeterValue.text!)! / 1000)
        mileValue.text = String(format: "%.4f", Double(milimeterValue.text!)!  / 1609344.4)
        centimeterValue.text = String(format: "%.4f", Double(milimeterValue.text!)! / 10)
        yardValue.text = String(format: "%.4f", Double(milimeterValue.text!)! / 914.4)
        inchValue.text = String(format: "%.4f", Double(milimeterValue.text!)! / 25.4)
    }
    
    @IBAction func convertYard(_ sender: Any) {
        meterValue.text = String(format: "%.4f", Double(yardValue.text!)! / 1.094)
        mileValue.text = String(format: "%.4f", Double(yardValue.text!)!  / 1760)
        centimeterValue.text = String(format: "%.4f", Double(yardValue.text!)! * 91.44)
        milimeterValue.text = String(format: "%.4f", Double(yardValue.text!)! * 914.4)
        inchValue.text = String(format: "%.4f", Double(yardValue.text!)! * 36)
    }
    
    @IBAction func convertInch(_ sender: Any) {
        meterValue.text = String(format: "%.4f", Double(inchValue.text!)! / 39.37)
        mileValue.text = String(format: "%.4f", Double(inchValue.text!)!  / 63360)
        centimeterValue.text = String(format: "%.4f", Double(inchValue.text!)! * 2.54)
        milimeterValue.text = String(format: "%.4f", Double(inchValue.text!)! * 25.4)
        yardValue.text = String(format: "%.4f", Double(inchValue.text!)! / 36)
    }
    
}
