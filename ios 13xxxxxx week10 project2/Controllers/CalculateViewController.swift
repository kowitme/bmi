//
//  ViewController.swift
//  ios 13xxxxxx week10 project2
//
//  Created by Kowit Meboon on 19/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    //Global Variable คือ ตัวแปรตรงกลางที่ใช้ร่วมกันได้ใน Class ฟังก์ชันอื่นสามารถเรียกใช้ได้
    //var bmiValueCal = "0"
    //var calBrain = CalculateBrain()
    
    //เรียกใช้ struct #1 ประกาศตัวแปรชนิด struct
    //calculatorBrain
    var calculatorBrain = CalculateBrain()
    
    @IBOutlet weak var sliderHeight: UISlider!
    @IBOutlet weak var sliderWeight: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print(sender.value)
        
//        print(String(format:"%.2f",sender.value))
//        print(String(format:"%.0f",sender.value))
//
//        let weight = String(format:"%.0f",sender.value)
//        weightLable.text = "\(weight) Kg."
    
    }
    
    
    @IBAction func calculatePressed(_ sender: Any) {
        
        let heightFromUser = sliderHeight.value
        let weightFromUser = sliderWeight.value
        //Local Variable
        //let bmi = weight / (height * height)
        //print(bmi)
        
        //bmiValueCal = String(format: "%.1f", weight / (height * height))
        
        //เรียกใช้ struct #2 เรียกฟังก์ชันของ struct โดยการส่งค่าที่ต้องการไป
        //calculatorBrain
        calculatorBrain.calculateBMI(height: heightFromUser, weight: weightFromUser)
        
        //self.performSegue(withIdentifier: "goToResult", sender: self)
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    
    @IBAction func heartPressed(_ sender: UIButton) {
        //self.performSegue(withIdentifier: "goToCredit", sender: self)
        performSegue(withIdentifier: "goToCredit", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
         //   destinationVC.bmiValue = bmiValueCal
        // ชื่อ obeject.ชื่อตัวแปร = ค่าที่ต้องการ set ให้
            
            //เรียกใช้ struct #3 เรียกใช้ fuction getBMIValue() ส่งกลับมาเป็น String ซึ่งเป็นชนิดเดียวกับที่ .bmiValue ต้องการ
            //รู้ว่าตัวเดียวกันด้วยชื่อ calculatorBrain
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            
            destinationVC.advice = calculatorBrain.getAdvice()
            
            destinationVC.color = calculatorBrain.getColor()
        }//end if
        
        if  segue.identifier == "goToCredit" {
            let CreditVC = segue.destination as! CreditViewController
            CreditVC.fullname = "Kowit Meboon"
        }
        
    }//end function prepare
    
}//end class

