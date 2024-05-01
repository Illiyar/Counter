//
//  ViewController.swift
//  Counter
//
//  Created by Илияр Баратов on 02.05.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private var clickCount: Int = 0
    private var currentTime: String {
        Date().description(with: .current)
    }
    
    @IBOutlet weak var historyTextView: UITextView!
    @IBOutlet weak var buutonMinus: UIButton!
    @IBOutlet weak var clickButton: UIButton!
    
    @IBOutlet weak var buttonDefault: UIButton!
    @IBAction func buttonMinusDidTap(_ sender: Any) {
        if(clickCount-1 < 0)
        {
            getLog(variables: "underZero")
        }
        else{
            clickCount -= 1
            getLog(variables: "-")
            getCounter()
        }
    }
    @IBAction func buttonDidTap(_ sender: Any) {
        clickCount += 1
        getLog(variables: "+")
        getCounter()
    }
    @IBAction func buttonDefaultDidTap(_ sender: Any) {
        clickCount = 0
        getLog(variables: "0")
        getCounter()
    }
    @IBOutlet weak var counterLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getCounter()
    }
    
    private func getCounter()
    {
        counterLabel.text = "\(clickCount)"
    }
    
    private func getLog(variables:String)
    {
        switch variables {
        case "+":
            historyTextView.text += "\nНажата кнопка + " + currentTime
        case "-":
            historyTextView.text += "\nНажата кнопка - " + currentTime
        case "0":
            historyTextView.text += "\nПроизошел сброс счетчика " + currentTime
        case "underZero":
            historyTextView.text += "\nПопытка уменьшить значение счетчика ниже 0 " + currentTime
        default:
            historyTextView.text = "Error code 00000 no variables"
        }
    }
    

}

