//
//  ViewController.swift
//  Tipster
//
//  Created by Stef Epp on 12/22/15.
//  Copyright © 2015 Stef Epp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountLabel: UILabel!
    @IBOutlet weak var NumPeopleLabel: UILabel!
    @IBOutlet weak var perPerson1Label: UILabel!
    @IBOutlet weak var perPerson2Label: UILabel!
    @IBOutlet weak var tipPerPersonLabel: UILabel!
    @IBOutlet weak var totTipLabel: UILabel!
    @IBOutlet weak var totalppLabel: UILabel!
    @IBOutlet weak var totalNameLabel: UILabel!
    @IBOutlet weak var magLabel: UILabel!
    @IBOutlet weak var mehLabel: UILabel!
    @IBOutlet weak var medLabel: UILabel!
    @IBOutlet weak var barThing: UIView!
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var amountOfPeopleField: UITextField!
    @IBOutlet weak var perPersonLabel: UILabel!
    @IBOutlet weak var totalPerPersonLabel: UILabel!
    
    var x = 0.0
    var y = 0.0
    var z = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Tipster"
        // Do any additional setup after loading the view, typically from a nib.
    
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        amountOfPeopleField.text = "1"
        perPersonLabel.text = "$0.00"
        totalPerPersonLabel.text = "$0.00"
        
        tipControl.setTitle("15%", forSegmentAtIndex: 0)
        tipControl.setTitle("18%", forSegmentAtIndex: 1)
        tipControl.setTitle("20%", forSegmentAtIndex: 2)
        
        x = 15
        y = 0.18
        z = 0.2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [x, y, z]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text!).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        var numberOfPeople = NSString(string: amountOfPeopleField.text!).doubleValue
        var perPersonTip = (billAmount * tipPercentage) / numberOfPeople
        var perPersonTotal = (billAmount + tip) / numberOfPeople
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        perPersonLabel.text = String(format: "$%.2f", perPersonTip)
        totalPerPersonLabel.text = String(format: "$%.2f", perPersonTotal)
        if amountOfPeopleField.text == "" {
            perPersonLabel.text = "$0.00"
            totalPerPersonLabel.text = "$0.00"
        }

    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from NSUserDefaults
        // and use it to update the tip amount
        let mehDefaults = NSUserDefaults.standardUserDefaults()
        let mehValue = mehDefaults.doubleForKey("default_meh_percentage")
        tipControl.setTitle(NSString(format: "%.0f", mehValue) as String + "%", forSegmentAtIndex: 0)
        x = mehValue / 100
        mehDefaults.synchronize()
        
        let medDefaults = NSUserDefaults.standardUserDefaults()
        let medValue = medDefaults.doubleForKey("default_med_percentage")
        tipControl.setTitle(NSString(format: "%.0f", medValue) as String + "%", forSegmentAtIndex: 1)
        y = medValue / 100
        medDefaults.synchronize()
        
        let magdefaults = NSUserDefaults.standardUserDefaults()
        let magValue = magdefaults.doubleForKey("default_mag_percentage")
        tipControl.setTitle(NSString(format: "%.0f", magValue) as String + "%", forSegmentAtIndex: 2)
        z = magValue / 100
        magdefaults.synchronize()
        
        let themeColors = NSUserDefaults.standardUserDefaults()
        var color = UIColor.whiteColor()
        var lttcolor = UIColorFromRGB(0x2988FF)
        var dttcolor = UIColorFromRGB(0xFF3A26)
        var barcolor = UIColor.blackColor()
        
        if let backColor = themeColors.objectForKey("backColor") as? String {
            switch backColor {
            case "def": color = UIColor.whiteColor()
            case "cherry": color = UIColorFromRGB(0xFFECEC)
            case "cake": color = UIColorFromRGB(0xC5E0DC)
            default: break
            }
        }
        
        if let lightTextColor = themeColors.objectForKey("lightTextColor") as? String {
            switch lightTextColor {
            case "def": lttcolor = UIColorFromRGB(0x2988FF)
            case "cherry": lttcolor = UIColorFromRGB(0xffb5c6)
            case "cake": lttcolor = UIColorFromRGB(0xFAF0DF)
            default: break
            }
        }
        
        if let darkTextColor = themeColors.objectForKey("darkTextColor") as? String {
            switch darkTextColor {
            case "def": dttcolor = UIColorFromRGB(0xFF3A26)
            case "cherry": dttcolor = UIColorFromRGB(0xED7B8A)
            case "cake": dttcolor = UIColorFromRGB(0xE08E79)
            default: break
            }
        }
        
        if let barColor = themeColors.objectForKey("barColor") as? String {
            switch barColor {
            case "def": barcolor = UIColor.blackColor()
            case "cherry": barcolor = UIColor.whiteColor()
            case "cake": barcolor = UIColorFromRGB(0xF1D4AF)
            default: break
            }
        }
        
        view.backgroundColor = color
        billAmountLabel.textColor = lttcolor
        NumPeopleLabel.textColor = lttcolor
        perPerson1Label.textColor = lttcolor
        perPerson2Label.textColor = lttcolor
        tipPerPersonLabel.textColor = lttcolor
        totTipLabel.textColor = lttcolor
        totalppLabel.textColor = lttcolor
        totalNameLabel.textColor = lttcolor
        magLabel.textColor = lttcolor
        mehLabel.textColor = lttcolor
        medLabel.textColor = lttcolor
        tipControl.tintColor = lttcolor
        tipLabel.textColor = dttcolor
        billField.textColor = dttcolor
        totalLabel.textColor = dttcolor
        amountOfPeopleField.textColor = dttcolor
        perPersonLabel.textColor = dttcolor
        totalPerPersonLabel.textColor = dttcolor
        barThing.backgroundColor = barcolor

    }
    
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }

    

}

