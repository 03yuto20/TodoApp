//
//  AddController.swift
//  Todo
//
//  Created by Yuto Nakamura on 2018/08/11.
//  Copyright © 2018年 Yuto Nakamura. All rights reserved.
//

import UIKit

//変数の設置
var Todokobetsunonakami = [String]()

class AddController: UIViewController {
    
    //テキストフィールドの設定
    @IBOutlet weak var TodoTextField: UITextField!
    
    //Addボタンの設定
    @IBAction func TodoAddController(_ sender: Any) {
        //変数に入力内容を入れる
        Todokobetsunonakami.append(TodoTextField.text!)
        
        //Addボタンをタップ後フィールドを空にする
        TodoTextField.text = ""
        
        //変数の中身をUD(簡易的な保存先)に追加
        UserDefaults.standard.set(Todokobetsunonakami, forKey: "TodoList")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
