//
//  ViewController.swift
//  Jailbreak
//
//  Created by Ashok on 12/11/17.
//  Copyright © 2017 Forth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var mainButon: UIButton!

    @IBAction func tapped(_ sender: Any) {
        checkJailbreak();
    }
    
    func checkJailbreak(){
        if FileManager.default.fileExists(atPath: "/bin/bash"){
            let alert = UIAlertController(title: "Jailbroken", message: "Your Device is jailbroken", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            //self.present(alert, animated: true);
            self.view.backgroundColor = UIColor.green ;
            mainButon.setTitleColor(UIColor.black, for: .normal)
            mainButon.setTitle("Jailbroken", for: .normal) ;
        }else{
            let alert = UIAlertController(title: "Not Jailbroken", message: "Your Device is not jailbroken", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            //self.present(alert, animated: true);
            self.view.backgroundColor = UIColor.red ;
            mainButon.setTitleColor(UIColor.black, for: .normal)
            mainButon.setTitle("Not Jailbroken", for: .normal) ;
            
        }
    }

}

