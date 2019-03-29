//
//  SecondViewController.swift
//  IOSApp
//
//  Created by fortude on 3/29/19.
//  Copyright © 2019 PamodyaD. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var kgValue: UITextField!
    @IBOutlet weak var gramValue: UITextField!
    @IBOutlet weak var ouncesValue: UITextField!
    @IBOutlet weak var poundsValue: UITextField!
    @IBOutlet weak var stonePoundsValue: UITextField!
    
    
    
    @IBAction func convertKg(_ sender: Any) {
        gramValue.text = String(format: "%.4f", Double(kgValue.text!)! * 1000)
        ouncesValue.text = String(format: "%.4f", Double(kgValue.text!)! * 35.274)
        poundsValue.text = String(format: "%.4f", Double(kgValue.text!)! * 2.205)
        stonePoundsValue.text = String(format: "%.4f", Double(kgValue.text!)! / 6.35)
    }
    @IBAction func convertGrams(_ sender: Any) {
        kgValue.text = String(format: "%.4f", Double(gramValue.text!)! / 1000)
        ouncesValue.text = String(format: "%.4f", Double(gramValue.text!)! / 28.35)
        poundsValue.text = String(format: "%.4f", Double(gramValue.text!)!  / 453.592)
        stonePoundsValue.text = String(format: "%.4f", Double(gramValue.text!)! / 6350.293)
    }
    
    @IBAction func convertOunces(_ sender: Any) {
        kgValue.text = String(format: "%.4f", Double(ouncesValue.text!)! / 35.274)
        gramValue.text = String(format: "%.4f", Double(ouncesValue.text!)! * 28.35)
        poundsValue.text = String(format: "%.4f", Double(ouncesValue.text!)!  / 16.0)
        stonePoundsValue.text = String(format: "%.4f", Double(ouncesValue.text!)! / 224.0)
        
    }
    
    @IBAction func convertPounds(_ sender: Any) {
        kgValue.text = String(format: "%.4f", Double(poundsValue.text!)! / 2.205)
        gramValue.text = String(format: "%.4f", Double(poundsValue.text!)! * 453.592)
        ouncesValue.text = String(format: "%.4f", Double(poundsValue.text!)!  * 16.0)
        stonePoundsValue.text = String(format: "%.4f", Double(poundsValue.text!)! / 14.0)
    }
    
    @IBAction func convertStonePounds(_ sender: Any) {
        kgValue.text = String(format: "%.4f", Double(stonePoundsValue.text!)! * 6.35)
        gramValue.text = String(format: "%.4f", Double(stonePoundsValue.text!)! * 6350.293)
        ouncesValue.text = String(format: "%.4f", Double(stonePoundsValue.text!)!  * 224.0)
        poundsValue.text = String(format: "%.4f", Double(stonePoundsValue.text!)! * 14.0)
    }
}

