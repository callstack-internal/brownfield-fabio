//
//  ViewController.swift
//  BrownfieldFabioApp
//
//  Created by Fábio Henriques on 30/01/2023.
//

import UIKit
import React

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func navigateButtonTapped(sender : UIButton) {
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
        
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation!,
            moduleName: "BrownfieldFabioApp",
            initialProperties: nil,
            launchOptions: nil
        )
        
        let vc = UIViewController()
        vc.view = rootView
        
        self.present(vc, animated: true, completion: nil)
    }
    
}

