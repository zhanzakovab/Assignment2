//
//  HistoryViewController.swift
//  Assignment2
//
//  Created by Zhanzakova Botakoz on 31.01.2021.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    let Score = UserDefaults.standard.string(forKey: "Score") ?? "0"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel!.text = "\(Score)0%"
        return cell
    }
    
    @IBAction func homePage(){
        let vc = storyboard?.instantiateViewController(identifier: "main") as! ViewController
        present(vc, animated: true)
        vc.modalPresentationStyle = .fullScreen
    }
    

}
