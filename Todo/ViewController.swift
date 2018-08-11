//
//  ViewController.swift
//  Todo
//
//  Created by Yuto Nakamura on 2018/08/11.
//  Copyright © 2018年 Yuto Nakamura. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return Todokobetsunonakami.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  TodoCell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath)
        TodoCell.textLabel!.text = Todokobetsunonakami[indexPath.row]
        return TodoCell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if UserDefaults.standard.object(forKey: "TodoList") != nil {
            Todokobetsunonakami = UserDefaults.standard.object(forKey: "TodoList") as! [String]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

