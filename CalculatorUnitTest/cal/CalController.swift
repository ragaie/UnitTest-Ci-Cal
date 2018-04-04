//
//  CalViewController.swift
//  CalculatorUnitTest
//
//  Created by Ragaie alfy on 4/3/18.
//  Copyright © 2018 Ragaie alfy. All rights reserved.
//

import UIKit

class CalController: NSObject {
    var myView : CalView!
    
    override init(){
        
        
        super.init()
        
    }
    
    func div(first : Double , secand : Double) -> Double{
        
        if secand == 0 {
            
            return 0
            
        }
        else{
            
            return first / secand
        }
        
    }
    func mul(first : Double , secand : Double) -> Double{
        
      
            return first * secand

        
    }
    func minus(first : Double , secand : Double) -> Double{
        
       
            return first - secand
        
        
    }
    func plus(first : Double , secand : Double) -> Double{
        
     
            return first + secand
        
        
    }
    
}
