//
//  SeventhViewController.swift
//  IOSApp
//
//  Created by fortude on 3/29/19.
//  Copyright © 2019 PamodyaD. All rights reserved.
//

import UIKit

class SeventhViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        valKg.text = GlobalVar.GlobalArr.arr[0]
        valGrams.text = GlobalVar.GlobalArr.arr[1]
        valOunces.text = GlobalVar.GlobalArr.arr[2]
        valPounds.text = GlobalVar.GlobalArr.arr[3]
        valStone.text = GlobalVar.GlobalArr.arr[4]
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

    @IBOutlet weak var valKg: UITextField!
    @IBOutlet weak var valGrams: UITextField!
    @IBOutlet weak var valOunces: UITextField!
    @IBOutlet weak var valPounds: UITextField!
    @IBOutlet weak var valStone: UITextField!
    
    
//    @IBAction func showKg(_ sender: Any) {
//        print("=========\(SecondViewController.GlobalVar.arr[0])")
//        valKg.text = SecondViewController.GlobalVar.arr[0]
//    }
    func showKg(){
        print("=========\(GlobalVar.GlobalArr.arr[0])")
        valKg.text = GlobalVar.GlobalArr.arr[0]
    }
    
    
    
    
//    @IBAction func showKg(_ sender: Any) {
//        valKg.text = SecondViewController.GlobalVar.arr[0]
//    }
    
    
}
