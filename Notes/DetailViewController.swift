//
//  DetailViewController.swift
//  Notes
//
//  Created by Prerana on 01/11/22.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var countryName: UILabel!
    @IBOutlet weak var countryImg: UIImageView!
    @IBOutlet weak var countryDetail: UITextView!
    
    var lbl1:String!
    var lbl2:String!
    var img:UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        countryName.text = lbl1
        countryDetail.text = lbl2
        countryImg.image = img
    }
    

   

}
