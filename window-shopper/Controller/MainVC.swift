//
//  ViewController.swift
//  window-shopper
//
//  Created by Islam on 6/16/18.
//  Copyright © 2018 Islam. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    @IBOutlet weak var hoursLbl: UILabel!
    @IBOutlet weak var ResultLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height:60 ))
       
        calBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        calBtn.setTitle("Calculate", for: .normal)
        calBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calBtn
        priceTxt.inputAccessoryView = calBtn
        
        ResultLbl.isHidden = true
        hoursLbl.isHidden = true

    }

    @objc func calculate(){
        print("Iam calc func !")
        if let wageTxt = wageTxt.text , let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                ResultLbl.text = String (Wage.getHours(forWage: wage, forPrice: price))
                ResultLbl.isHidden = true
                hoursLbl.isHidden = true
            }
        }
        
        
        ResultLbl.isHidden = false
        hoursLbl.isHidden = false
    }

    @IBAction func ClrCalBtn_pressed(_ sender: Any) {
        wageTxt.text = ""
        priceTxt.text = ""
        ResultLbl.text = "0"
        ResultLbl.isHidden = true
        hoursLbl.isHidden = true
    
    }
    
}

