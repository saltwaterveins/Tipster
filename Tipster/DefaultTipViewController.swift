//
//  DefaultTipViewController.swift
//  Tipster
//
//  Created by Stef Epp on 12/24/15.
//  Copyright © 2015 Stef Epp. All rights reserved.
//

import UIKit

class DefaultTipViewController: UIViewController {
    
    @IBOutlet weak var mehField: UITextField!
    @IBOutlet weak var medFielf: UITextField!
    @IBOutlet weak var magField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Default Tips"

        // Do any additional setup after loading the view.
        mehField.text = "15"
        medFielf.text = "18"
        magField.text = "20"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func MehChanged(sender: AnyObject) {
        let mehDefaults = NSUserDefaults.standardUserDefaults()
        mehDefaults.setDouble((NSString(string: mehField.text!).doubleValue), forKey: "default_meh_percentage")
        mehDefaults.synchronize()
        //NSUserDefaults.synchronize(NSUserDefaults)
        
    }
    
    
    
    @IBAction func MedChanged(sender: AnyObject) {
        let medDefaults = NSUserDefaults.standardUserDefaults()
        medDefaults.setDouble((NSString(string: medFielf.text!).doubleValue), forKey: "default_med_percentage")
        medDefaults.synchronize()
    }
    
    @IBAction func MagChanged(sender: AnyObject) {
        let magdefaults = NSUserDefaults.standardUserDefaults()
        magdefaults.setDouble((NSString(string: magField.text!).doubleValue), forKey: "default_mag_percentage")
        magdefaults.synchronize()
    }

    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
