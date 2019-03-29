//
//  ThirdViewController.swift
//  IOSApp
//
//  Created by fortude on 3/29/19.
//  Copyright © 2019 PamodyaD. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

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
    @IBOutlet weak var celciusValue: UITextField!
    
    @IBOutlet weak var farenheitValue: UITextField!
    
    @IBOutlet weak var kelvinValue: UITextField!
    
    
    @IBAction func convertCelcius(_ sender: Any) {
        farenheitValue.text = String(format: "%.4f", (Double(celciusValue.text!)! * 9/5) + 32)
        kelvinValue.text = String(format: "%.4f", Double(celciusValue.text!)! + 273.15)
        
    }
    
    @IBAction func convertFarenheit(_ sender: Any) {
        celciusValue.text = String(format: "%.4f", (Double(farenheitValue.text!)! - 32) * 5/9)
        kelvinValue.text = String(format: "%.4f", (Double(farenheitValue.text!)! - 32) * 5/9 + 273.15)
    }
    
    @IBAction func convertKelvin(_ sender: Any) {
        celciusValue.text = String(format: "%.4f", Double(kelvinValue.text!)! - 273.15)
        farenheitValue.text = String(format: "%.4f", (Double(kelvinValue.text!)! - 273.15) * 9/5 + 32)
    }
    
    
    
    
    
    
    
}
