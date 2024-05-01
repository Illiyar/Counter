//
//  ViewController.swift
//  Counter
//
//  Created by Илияр Баратов on 02.05.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private var clickCount: Int = 0
    
    @IBOutlet weak var clickButton: UIButton!
    
    @IBAction func buttonDidTap(_ sender: Any) {
        clickCount += 1
        counterLabel.text = "\(clickCount)"
    }
    @IBOutlet weak var counterLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counterLabel.text = "\(clickCount)"
    }


}

