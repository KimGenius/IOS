//
//  ViewController.swift
//  FirstIphoneApp
//
//  Created by 김영재 on 2018. 9. 4..
//  Copyright © 2018년 GeniusK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var randomText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func getResult(_ sender: Any) {
        let randomArr = randomText.text!.components(separatedBy: ",")
        print(randomArr)
        let random = Int(arc4random_uniform(UInt32(randomArr.count)))
        print(random)
        print(randomArr[random])
        resultLabel.text = randomArr[random]
    }

}

