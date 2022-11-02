//
//  ViewController.swift
//  Notes
//
//  Created by Prerana on 01/11/22.
//

import UIKit

struct Login:Encodable{
    var username:String = ""
    var password:String = ""
}
class ViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func login(_ sender: UIButton) {
        
       
        
    }
    
    @IBAction func signUp(_ sender: Any) {
    }
    
}

