//
//  ViewController.swift
//  gitexample
//
//  Created by saiusers on 23/03/18.
//  Copyright © 2018 saiusers. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
  
    
    
    

    @IBOutlet var tblload: UITableView!
    @IBOutlet var lbltitle: UILabel!
    var arr = ["Support","Followup","FAQ","Account","singout"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tblload.dataSource = self
        tblload.delegate = self
        
        var hello = "welcome"
           print(hello)
        arr.append("register")
    }
 
    
    override func viewWillAppear(_ animated: Bool) {
        lbltitle.text  =  "Welcome to new project"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = arr[indexPath.row]
        return cell!
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

