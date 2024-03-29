//
//  KeyboardViewController.swift
//  Keyboard
//
//  Created by fortude on 4/2/19.
//  Copyright © 2019 PamodyaD. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        // Add custom view sizing constraints here
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Perform custom UI setup here
        self.nextKeyboardButton = UIButton(type: .system)

        self.nextKeyboardButton.setTitle(NSLocalizedString("ABC", comment: "Title for 'Next Keyboard' button"), for: [])
        self.nextKeyboardButton.sizeToFit()
        self.nextKeyboardButton.translatesAutoresizingMaskIntoConstraints = false

        self.nextKeyboardButton.addTarget(self, action: #selector(handleInputModeList(from:with:)), for: .allTouchEvents)

        self.view.addSubview(self.nextKeyboardButton)

        self.nextKeyboardButton.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        self.nextKeyboardButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
    
    override func textWillChange(_ textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }
    
    override func textDidChange(_ textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
        
        var textColor: UIColor
        let proxy = self.textDocumentProxy
        if proxy.keyboardAppearance == UIKeyboardAppearance.dark {
            textColor = UIColor.white
        } else {
            textColor = UIColor.white
        }
        self.nextKeyboardButton.setTitleColor(textColor, for: [])
    }
    
    @IBAction func clickOnOne(_ sender: Any) {
        self.textDocumentProxy.insertText("1")

    }
    
    
    @IBAction func clickOnTwo(_ sender: Any) {
        self.textDocumentProxy.insertText("2")
    }
    
    
    @IBAction func clickOnThree(_ sender: Any) {
        self.textDocumentProxy.insertText("3")
    }
    
    
    @IBAction func clickOnFour(_ sender: Any) {
        self.textDocumentProxy.insertText("4")
    }
    
    
    @IBAction func clickOnFive(_ sender: Any) {
        self.textDocumentProxy.insertText("5")
    }
    
    
    @IBAction func clickOnSix(_ sender: Any) {
        self.textDocumentProxy.insertText("6")
    }
    
    @IBAction func clcikOnSeven(_ sender: Any) {
        self.textDocumentProxy.insertText("7")
    }
    
    @IBAction func clickOnEight(_ sender: Any) {
        self.textDocumentProxy.insertText("8")
    }
    
    @IBAction func clickOnNine(_ sender: Any) {
        self.textDocumentProxy.insertText("9")
        
    }
    
    
    @IBAction func clickOnZero(_ sender: Any) {
        self.textDocumentProxy.insertText("0")
        
    }
    
    
    
    @IBAction func clickOnDecimalPoint(_ sender: Any) {
        self.textDocumentProxy.insertText(".")
    }
    
    
    @IBAction func clickOnNegate(_ sender: Any) {
        self.textDocumentProxy.insertText("-")
    }
    
    
    @IBAction func clickOnDel(_ sender: Any) {
        self.textDocumentProxy.deleteBackward()
    }
    
}
