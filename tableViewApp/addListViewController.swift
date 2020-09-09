//
//  addListViewController.swift
//  tableViewApp
//
//  Created by 米倉謙 on 2020/09/06.
//  Copyright © 2020 kenyonekura.com. All rights reserved.
//

import UIKit

class addListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var addText: UITextField!
    
//    配列の宣言
    var array = [String]()
    @IBAction func addButton(_ sender: Any) {
        
        print(array)
        
        if UserDefaults.standard.object(forKey: "add") != nil{
                    
        array = UserDefaults.standard.object(forKey: "add")
                    as![String]
                }
        
        print(array)
        
        
//        addボタンを押されたら配列を追加する
        array.append(addText.text!)
//        UserDefaultsキー型DB
        UserDefaults.standard.set(array, forKey:"add")
//        画面で戻る時に使用(こういうもの)
        self.navigationController?.popViewController(animated: true)
        
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
