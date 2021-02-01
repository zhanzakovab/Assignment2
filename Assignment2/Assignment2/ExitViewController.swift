//
//  ExitViewController.swift
//  Assignment2
//
//  Created by Zhanzakova Botakoz on 31.01.2021.
//

import UIKit

class ExitViewController: UIViewController {
    var r = QuizViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var Result: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        let Score = UserDefaults.standard.string(forKey: "Score") ?? "0"
        Result.text = "\(Score)0%"
    }
    
         
    @IBAction func tryAgain(){
        let vc = storyboard?.instantiateViewController(identifier: "quiz") as! QuizViewController
        present(vc, animated: true)
        vc.modalPresentationStyle = .fullScreen
    }
    
    @IBAction func homePage(){
        let vc = storyboard?.instantiateViewController(identifier: "main") as! ViewController
        present(vc, animated: true)
        vc.modalPresentationStyle = .fullScreen
    }
    
    
}
