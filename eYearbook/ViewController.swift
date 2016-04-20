//
//  ViewController.swift
//  eYearbook
//
//  Created by Max Segale on 4/20/16.
//  Copyright © 2016 Entourage Yearbooks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userIdField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func resetHelloLabel() {
        helloLabel.text = ""
    }

    @IBAction func signInButton(sender: AnyObject) {
        var helloString = "Hello new user!"
        if userIdField.text != "" {
            helloString = "Hello \(userIdField.text!)."
        } else {
            helloString += "\nPlease provide your user id."
        }
        if passwordField.text == "" {
            helloString += "\nPlease provide your password."
        }
        helloLabel.text = helloString
        NSTimer.scheduledTimerWithTimeInterval(NSTimeInterval(5), target: self, selector: #selector(ViewController.resetHelloLabel), userInfo: nil, repeats: false)
    }

}
