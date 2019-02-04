//
//  ViewController.swift
//  Question Bot
//
//  Created by Denis Bystruev on 28/01/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var questionTextView: UITextView!
    
    let answerer = QuestionAnswerer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        guard let question = questionTextView.text else { return }
        
        let answer = answerer.answer(question: question)
        
        answerLabel.text = answer
    }
    
}

