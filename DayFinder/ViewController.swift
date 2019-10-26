//
//  ViewController.swift
//  DayFinder
//
//  Created by Didzis Tupureins on 26/10/2019.
//  Copyright © 2019 Didzis Tupureins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dayTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationStyle()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
    func navigationStyle(){
        let app = UINavigationBarAppearance()
        app.backgroundColor = UIColor.brown.withAlphaComponent(0.7)
        
        self.navigationController?.navigationBar.scrollEdgeAppearance = app
    }
    
    @IBAction func findButton(_ sender: Any) {
    } //calculation
    
    
}

