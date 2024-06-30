//
//  colorsdetailsVC.swift
//  randomcolours
//
//  Created by Lokik Gupta on 28/06/24.
//

import UIKit

class colorsdetailsVC: UIViewController {
    
    var color : UIColor?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color ?? .blue
        
    }
    
}
