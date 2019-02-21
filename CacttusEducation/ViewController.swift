//
//  ViewController.swift
//  CacttusEducation
//
//  Created by Drenushe Imeraj on 14/02/2019.
//  Copyright © 2019 Drenushe Imeraj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var shownameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let string1:String = "HELLO"
        print(string1)
        let name=showData(name: string1)
        print("teksti:\(name)")
        let namesArray: [String] = ["Drenusha", "Kaltrina", "Dren", "Flamur"]
        showResult(parameter: string1)
        
        for var i in 0...namesArray.count-1{
            let name = namesArray[i]
            print("\(i) Emri: \(name)")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    func showData(name: String) -> String{
        return name
    }
    
    func showResult(parameter:String){
        nameLabel.text = parameter
    }
    
    @IBAction func showNameButton(_ sender: Any) {
    }
}

