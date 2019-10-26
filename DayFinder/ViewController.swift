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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) //aizvāc klaviatūru, kad beidzam rakstīt un nospiežam citur
    }
    
    func navigationStyle(){
        let app = UINavigationBarAppearance()
        app.backgroundColor = UIColor.brown.withAlphaComponent(0.7)
        
        self.navigationController?.navigationBar.scrollEdgeAppearance = app
    }
    
    @IBAction func findButton(_ sender: Any) {
        let calendar = Calendar.current
        
        var dateComponents = DateComponents()
        dateComponents.day = Int(dayTextField.text!)
        dateComponents.month = Int(monthTextField.text!)
        dateComponents.year = Int(yearTextField.text!)
        
        let date = calendar.date(from: dateComponents)
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "lv_LV")
        dateFormatter.dateFormat = "EEEE"
        
        let weekday = dateFormatter.string(from: date!)
        let capitalizedWeekday = weekday.capitalized
        resultLabel.text = capitalizedWeekday
    } //calculation
    
    
}

