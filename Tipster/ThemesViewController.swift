//
//  ThemesViewController.swift
//  Tipster
//
//  Created by Stef Epp on 12/31/15.
//  Copyright © 2015 Stef Epp. All rights reserved.
//

import UIKit

class ThemesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    @IBAction func def(sender: AnyObject) {
        //view.backgroundColor =  UIColor.whiteColor()
        NSUserDefaults.standardUserDefaults().setObject("def", forKey: "backColor")
        NSUserDefaults.standardUserDefaults().setObject("def", forKey: "lightTextColor")
        NSUserDefaults.standardUserDefaults().setObject("def", forKey: "darkTextColor")
        NSUserDefaults.standardUserDefaults().setObject("def", forKey: "barColor")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    @IBAction func cherry(sender: AnyObject) {
        view.backgroundColor =  (UIColorFromRGB(0xFFECEC))
        NSUserDefaults.standardUserDefaults().setObject("cherry", forKey: "backColor")
        NSUserDefaults.standardUserDefaults().setObject("cherry", forKey: "lightTextColor")
        NSUserDefaults.standardUserDefaults().setObject("cherry", forKey: "darkTextColor")
        NSUserDefaults.standardUserDefaults().setObject("cherry", forKey: "barColor")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    @IBAction func blossom(sender: AnyObject) {
        view.backgroundColor =  (UIColorFromRGB(0xFFECEC))
        NSUserDefaults.standardUserDefaults().setObject("cherry", forKey: "backColor")
        NSUserDefaults.standardUserDefaults().setObject("cherry", forKey: "lightTextColor")
        NSUserDefaults.standardUserDefaults().setObject("cherry", forKey: "darkTextColor")
        NSUserDefaults.standardUserDefaults().setObject("cherry", forKey: "barColor")
        NSUserDefaults.standardUserDefaults().synchronize()
    }

    
    @IBAction func cake(sender: AnyObject) {
        view.backgroundColor =  (UIColorFromRGB(0xC5E0DC))
        NSUserDefaults.standardUserDefaults().setObject("cake", forKey: "backColor")
        NSUserDefaults.standardUserDefaults().setObject("cake", forKey: "lightTextColor")
        NSUserDefaults.standardUserDefaults().setObject("cake", forKey: "darkTextColor")
        NSUserDefaults.standardUserDefaults().setObject("cake", forKey: "barColor")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    

}
