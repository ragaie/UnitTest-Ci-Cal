//
//  ViewController.swift
//  CalculatorUnitTest
//
//  Created by Ragaie alfy on 4/3/18.
//  Copyright © 2018 Ragaie alfy. All rights reserved.
//

import UIKit

class CalView: UIViewController {

     @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var num9: UIButton!
    @IBOutlet weak var num8: UIButton!
    @IBOutlet weak var num7: UIButton!
    @IBOutlet weak var num6: UIButton!
    @IBOutlet weak var num5: UIButton!
    @IBOutlet weak var num4: UIButton!
    @IBOutlet weak var num3: UIButton!
    @IBOutlet weak var num2: UIButton!
    @IBOutlet weak var num1: UIButton!
    @IBOutlet weak var num0: UIButton!
    
    
    @IBOutlet weak var divv: UIButton!
    
    @IBOutlet weak var mul: UIButton!
    
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var equal: UIButton!
    
    
    var myController : CalController!
    var textData : String! = "0"
    
    
    var firstNumber  : Double! = 0
    var currentOpertion : String! = ""
    
    var newOperation : Bool! = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       print( view.recursiveDescription)
        
    //  print( UIWindow.key.rootViewController!.printHierarchy)
     print(  self.printHierarchy)
        
        myController = CalController()
        myController.myView = self
        
        
    
        num0.addTarget(self, action: #selector(CalView.writeNumber(_:)), for: .touchUpInside)
        num1.addTarget(self, action: #selector(CalView.writeNumber(_:)), for: .touchUpInside)
        num2.addTarget(self, action: #selector(CalView.writeNumber(_:)), for: .touchUpInside)
        num3.addTarget(self, action: #selector(CalView.writeNumber(_:)), for: .touchUpInside)
        num4.addTarget(self, action: #selector(CalView.writeNumber(_:)), for: .touchUpInside)
        num5.addTarget(self, action: #selector(CalView.writeNumber(_:)), for: .touchUpInside)
        num6.addTarget(self, action: #selector(CalView.writeNumber(_:)), for: .touchUpInside)
        num7.addTarget(self, action: #selector(CalView.writeNumber(_:)), for: .touchUpInside)
        num8.addTarget(self, action: #selector(CalView.writeNumber(_:)), for: .touchUpInside)
        num9.addTarget(self, action: #selector(CalView.writeNumber(_:)), for: .touchUpInside)

        
        minus.addTarget(self, action: #selector(CalView.doOperation(_:)), for: .touchUpInside)
        divv.addTarget(self, action: #selector(CalView.doOperation(_:)), for: .touchUpInside)
        plus.addTarget(self, action: #selector(CalView.doOperation(_:)), for: .touchUpInside)
        mul.addTarget(self, action: #selector(CalView.doOperation(_:)), for: .touchUpInside)

        equal.addTarget(self, action: #selector(CalView.evelauteOpertion(_:)), for: .touchUpInside)

        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @objc func writeNumber(_ sender : UIButton){
        
        if textData == "0" || newOperation{
            
            
            resultLabel.text =  sender.titleLabel?.text
            newOperation = false

        }
        else{
            
            var currentString : String! = resultLabel.text
            resultLabel.text =       currentString + (sender.titleLabel?.text)! as! String

            
        }
        textData = resultLabel.text
        
    }

    @objc func doOperation(_ sender : UIButton){
   
        currentOpertion = sender.titleLabel?.text
        
        firstNumber = Double( resultLabel.text!)
       // resultLabel.text! = "0"
        textData = "0"
    
    
    }
    @objc func evelauteOpertion(_ sender : UIButton){
        
        newOperation = true

        print(currentOpertion)
        if currentOpertion != ""{
            var nextValue : Double! = Double( resultLabel.text!)

        switch currentOpertion{
        case "/"?:
            
            
           resultLabel.text! = String(myController.div(first: firstNumber, secand: nextValue))
            break
        case "*"?:
           resultLabel.text! = String( myController.mul(first: firstNumber, secand: nextValue))

            break
            
        case "+"?:
            resultLabel.text! = String(myController.plus(first: firstNumber, secand: nextValue))

            break
        case "-"?:
            resultLabel.text! = String(myController.minus(first: firstNumber, secand: nextValue))

            break
            
        default:
            break
        }
        
        
    }

    }
    
   
    
    @IBAction func ClearData(_ sender: Any) {
        
        
        textData = "0"
        currentOpertion = ""
        firstNumber = 0
        newOperation = true
        
        resultLabel.text = "0"
    }
    
    

    
    
}
#if DEBUG
    
    extension UIWindow {
        
        class var key: UIWindow {
            let selector: Selector = NSSelectorFromString("keyWindow")
            let result = UIWindow.perform(selector)
            return result?.takeUnretainedValue() as! UIWindow
        }
    }
    
    extension UIView {
        
        var recursiveDescription: NSString {
            let selector: Selector = NSSelectorFromString("recursiveDescription")
            let result = perform(selector)
            return result?.takeUnretainedValue() as! NSString
        }
    }
    
    
    extension UIViewController {
        
        var printHierarchy: NSString {
            let selector: Selector = NSSelectorFromString("_printHierarchy")
            let result = perform(selector)
            return result?.takeUnretainedValue() as! NSString
        }
    }
    
#endif

