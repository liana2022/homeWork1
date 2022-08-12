//
//  ViewController.swift
//  Homework32
//
//  Created by Liana Asatryan on 13.08.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var leftConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .purple
    }
    
    
    @IBAction func rightGestureClicked(_ sender: Any) {
        leftConstraint.constant += 20
    }
    
    @IBAction func topGestuteClickes(_ sender: Any) {
        if topConstraint.constant < 0 {
            return
        }
        topConstraint.constant -= 20
    }
    
    @IBAction func leftGestureClicked(_ sender: Any) {
        if leftConstraint.constant < 0 {
            return
        }
        leftConstraint.constant -= 20
    }
    
    @IBAction func bottomGestureClicked(_ sender: Any) {
        topConstraint.constant += 20
    }
    
}

