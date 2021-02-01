//
//  QuizViewController.swift
//  Assignment2
//
//  Created by Zhanzakova Botakoz on 31.01.2021.
//

import UIKit

class QuizViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var ResultLabel: UILabel!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Prev: UIButton!
    @IBOutlet weak var Next: UIButton!
    
    let Questions = ["What is 2+2", "What is 3+3?","What is 4*4?", "What is 2+5?", "Subtract 457 from 832",  "What is  90 ÷ 10?", "Simplify: 26 + 32 - 12", "What is 3 + 6 x (5 + 4) ÷ 3 - 7?", "What is 24 + 4 ÷ 4?", "50 times 5 is equal to"]
    let Answers = [["4","5","6","7"],["5","5","6","7"],["4","16","6","23"],["4","5","6","7"],["412","500", "375", "72"],["32","4", "1","22"],["46", "23", "66", "89"],["9", "14", "11", "7"],["28", "3", "0", "25"],["2500","250","40","10"]]
    let CorrectAnswer = ["1", "3", "2", "4", "3", "3", "1", "2", "4", "2"]
    
    var CurrentQuestion = 0
    var Score = 0
    var defaults = UserDefaults.standard
        
    override func viewWillAppear(_ animated: Bool) {
        Question()
    }
    
    func Question(){
        ButtonEnable()
        
        ResultLabel.text = "\(Score)"
        QuestionLabel.text = Questions[CurrentQuestion]
        Button1.setTitle(Answers[CurrentQuestion][0], for: UIControl.State.normal)
        Button2.setTitle(Answers[CurrentQuestion][1], for: UIControl.State.normal)
        Button3.setTitle(Answers[CurrentQuestion][2], for: UIControl.State.normal)
        Button4.setTitle(Answers[CurrentQuestion][3], for: UIControl.State.normal)
                    
        
        CurrentQuestion += 1
        
        }
    
    @IBAction func Button1Action(_ sender: Any) {
            if(CorrectAnswer[CurrentQuestion-1] == "1"){
                    Score+=1
                UserDefaults.standard.set(Score, forKey: "Score")
                Button1.backgroundColor = UIColor.blue
                Button2.isEnabled = false;
                Button3.isEnabled = false;
                Button4.isEnabled = false;
            }
            else{
                Button1.backgroundColor = UIColor.red
                Button2.isEnabled = false;
                Button3.isEnabled = false;
                Button4.isEnabled = false;
            }
        }
        @IBAction func Button2Action(_ sender: Any) {
            if(CorrectAnswer[CurrentQuestion-1] == "2"){
                    Score+=1
                UserDefaults.standard.set(Score, forKey: "Score")
                Button2.backgroundColor = UIColor.blue
                Button1.isEnabled = false;
                Button3.isEnabled = false;
                Button4.isEnabled = false;
            }
            else{
                Button2.backgroundColor = UIColor.red
                Button1.isEnabled = false;
                Button3.isEnabled = false;
                Button4.isEnabled = false;
            }
        }
        @IBAction func Button3Action(_ sender: Any) {
            if(CorrectAnswer[CurrentQuestion-1] == "3"){
                    Score+=1
                UserDefaults.standard.set(Score, forKey: "Score")
                Button3.backgroundColor = UIColor.blue
                Button1.isEnabled = false;
                Button2.isEnabled = false;
                Button4.isEnabled = false;
            }
            else{
                Button3.backgroundColor = UIColor.red
                Button1.isEnabled = false;
                Button2.isEnabled = false;
                Button4.isEnabled = false;
            }
        }
        @IBAction func Button4Action(_ sender: Any) {
            if(CorrectAnswer[CurrentQuestion-1] == "4"){
                    Score+=1
                UserDefaults.standard.set(Score, forKey: "Score")
                Button4.backgroundColor = UIColor.blue
                Button1.isEnabled = false;
                Button2.isEnabled = false;
                Button3.isEnabled = false;
            }
            else{
                Button4.backgroundColor = UIColor.red
                Button1.isEnabled = false;
                Button2.isEnabled = false;
                Button3.isEnabled = false;
            }
        }
        
    
    func ButtonEnable(){
        Button1.isEnabled = true
        Button2.isEnabled = true
        Button3.isEnabled = true
        Button4.isEnabled = true
    }
    
    @IBAction func PrevButton(_ sender: Any) {
        ResultLabel.text = "\(Score)"
        QuestionLabel.text = Questions[CurrentQuestion-2]
        Button1.setTitle(Answers[CurrentQuestion-2][0], for: UIControl.State.normal)
        Button2.setTitle(Answers[CurrentQuestion-2][1], for: UIControl.State.normal)
        Button3.setTitle(Answers[CurrentQuestion-2][2], for: UIControl.State.normal)
        Button4.setTitle(Answers[CurrentQuestion-2][3], for: UIControl.State.normal)
    }

    
    @IBAction func NextButton(_ sender: Any) {
        Button1.backgroundColor = UIColor.systemGray2
        Button2.backgroundColor = UIColor.systemGray2
        Button3.backgroundColor = UIColor.systemGray2
        Button4.backgroundColor = UIColor.systemGray2

        if CurrentQuestion < Questions.count{
            Question()
        }
        else {        
                let vc = storyboard?.instantiateViewController(identifier: "exit") as! ExitViewController
                present(vc, animated: true)
                vc.modalPresentationStyle = .fullScreen
        }
    }
    
    
    
}

