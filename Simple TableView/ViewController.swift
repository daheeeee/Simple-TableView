//
//  ViewController.swift
//  Simple TableView
//
//  Created by D7703_07 on 2018. 5. 3..
//  Copyright © 2018년 D7703_07. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var animals = ["Cat", "Tiger", "Lion", "Monkey", "Cow" ]
    var country = ["Korea", "China", "Africa", "USA","Aus"]
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Delegate와 ViewController의 연결
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //row의 수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //cell의 재사용
        let identifier = "RE"
        
        //cell을 하나 메모리 할당하고 재사용을 위해 저장("RE")
        let cell = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        //배열에 있는 데이터를 cell에 넣기
        cell.textLabel?.text = animals[indexPath.row]
        cell.detailTextLabel?.text = country[indexPath.row]
        
        
        //image 넣기
        let myImage = UIImage(named: animals[indexPath.row])
        cell.imageView?.image = myImage
        return cell
    }
    

 


}

