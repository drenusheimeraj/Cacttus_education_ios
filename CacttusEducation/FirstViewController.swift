//
//  FirstViewController.swift
//  CacttusEducation
//
//  Created by Drenushe Imeraj on 14/02/2019.
//  Copyright © 2019 Drenushe Imeraj. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var showNameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showNameButton.setTitle("Show name!", for: .normal)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showNameButton(_ sender: Any) {
        
        nameLabel.text = "DRENUSHE IMERAJ"
        nameLabel.textColor = UIColor.red
    }
    

}
