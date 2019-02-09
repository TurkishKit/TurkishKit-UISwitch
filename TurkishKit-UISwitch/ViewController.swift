//
//  ViewController.swift
//  TurkishKit-UISwitch
//
//  Created by Berk Turan on 6.02.2019.
//  Copyright © 2019 Berk Turan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
   //UISwitch elementimizi kişiselleştirmek için kullandığımız kodlar
        
        //mySwitch değişkenimizin uygulama ilk açıldığında ki durumunu tanımlıyoruz
            mySwitch.setOn(false, animated: true)
            myLabel.text = "False"
        
        //mySwitch değişkeninin kapalı durumdayken ki dış çerçeve rengi için
            mySwitch.tintColor = UIColor.red
        
        //mySwitch değişkeninin açık durumdayken ki dış rengi için
            mySwitch.onTintColor = UIColor.green
        
        //mySwitch değişkeninin çember kısmının rengi için
            mySwitch.thumbTintColor = UIColor.white
        
        //mySwitch değişkenimize renkli bir arka plan vermek için
            mySwitch.backgroundColor = UIColor.gray
        
   //Yazdığımız fonksiyonu mySwitch değişkenimize Target olarak ekliyoruz
            mySwitch.addTarget(self, action: #selector(mySwitchValueChanged), for: UIControl.Event.valueChanged)
        
    }
    
    @IBAction func mySwitchValueChanged(_ sender: Any){
        if mySwitch.isOn {
            myLabel.text = "True"
            mySwitch.setOn(true, animated: true)
        }else{
            myLabel.text = "False"
            mySwitch.setOn(false, animated: true)
        }
    }
    
    
    
}
