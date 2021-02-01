//
//  ViewController.swift
//  Assignment2
//
//  Created by Zhanzakova Botakoz on 31.01.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startGame(){
        let vc = storyboard?.instantiateViewController(identifier: "quiz") as! QuizViewController
        present(vc, animated: true)
        vc.modalPresentationStyle = .fullScreen
    }
    
    @IBAction func viewHis(){
        let vc = storyboard?.instantiateViewController(identifier: "history") as! HistoryViewController
        present(vc, animated: true)
        vc.modalPresentationStyle = .fullScreen
    }

}

