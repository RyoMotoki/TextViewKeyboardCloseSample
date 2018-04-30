//
//  ViewController.swift
//  TextViewCloseSampleApp
//
//  Created by Ryo Motoki on 2018/04/30.
//  Copyright © 2018年 RyoMotoki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate {
    
    @IBOutlet var sampleTextField: UITextField!
    @IBOutlet var sampleTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        sampleTextView.delegate = self
        sampleTextField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //TextFieldはreturnキーでの改行もアリ
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    //TextViewは改行したいので、オススメではない
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if (text == "\n") {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
    //Keyboard以外の部分をタップして、閉じる方法（これ一番かっこいいよね笑）
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }


}

