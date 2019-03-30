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

//    struct Queue {
//        var arr:[String]  = []
//
//        mutating func enqueue(element: String){
//            arr.append(element)
//        }
//
//        mutating func dequeue(){
//            if arr.count == 25{
//                arr.remove(at: 0)
//            }
//        }
//    }
    
    struct GlobalVar{
        static var arr: [String] = []
    }
    func checkArrList(){
        print("######### \(GlobalVar.arr.endIndex)")
        if(GlobalVar.arr.endIndex >= 25){
            print("***********^^^^^\(GlobalVar.arr[0]) ")
            GlobalVar.arr.remove(at: 0)
        }
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
    
    
    @IBAction func saveKg(_ sender: Any) {
        if let value = kgValue.text{ UserDefaults.standard.set(value, forKey: "kgValue")
//            SecondViewController.Queue.enqueue(element: value)
            checkArrList()
            GlobalVar.arr.append(value)
        }
        if let value = gramValue.text{ UserDefaults.standard.set(value, forKey: "gramValue")
        
            checkArrList()
            GlobalVar.arr.append(value)
        }
        if let value = ouncesValue.text{ UserDefaults.standard.set(value, forKey: "ouncesValue")
                
                checkArrList()
                GlobalVar.arr.append(value)
        }
        if let value = poundsValue.text{ UserDefaults.standard.set(value, forKey: "poundsValue")
            
            checkArrList()
            GlobalVar.arr.append(value)
        }
        if let value = stonePoundsValue.text{ UserDefaults.standard.set(value, forKey: "stonePoundsValue")
            
            checkArrList()
            GlobalVar.arr.append(value)
        }
    }
    
//    @IBAction func retreiveKg(_ sender: Any) {
//
////        let value = UserDefaults.standard.string(forKey: "kgValue")
////        gramValue.text = value
//
//}

}

