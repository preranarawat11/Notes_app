//
//  AddViewController.swift
//  Notes
//
//  Created by Prerana on 02/11/22.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var addImage: UIImageView!
    @IBOutlet weak var addTitle: UITextField!
    @IBOutlet weak var addNote: UITextView!
    var data = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func saveButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(vc, animated: true)
        if let txt = addTitle.text, txt.isEmpty{
            vc.array1.insert(txt, at: 0)
        }
    }
    

   

}
