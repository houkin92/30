//
//  ViewController.swift
//  cell的重用
//
//  Created by 方瑾 on 2019/3/11.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit
var testInfo: [ListInfo] = [ListInfo(name:"zhao",country:"asd"),
                            ListInfo(name:"fcwe",country:"vwvw"),
                            ListInfo(name:"wvwv",country:"avewvw"),
                            ListInfo(name:"zvwvw",country:"verv"),
                            ListInfo(name:"ewvw",country:"vew"),
                            ListInfo(name:"zhbr",country:"asdrnb"),
                            ListInfo(name:"nwn",country:"b4wnbw")]

class ViewController: UIViewController {
    
    @IBOutlet weak var testTableView: UITableView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testTableView.delegate = self
        testTableView.dataSource = self
        
        
    }

    @IBAction func changeCellColor(_ sender: UIButton) {
        testInfo[sender.tag].isRed = true
        testTableView.reloadData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestCell", for: indexPath) as! TextTableViewCell
        cell.foxLabel.text = testInfo[indexPath.row].name
        cell.faxLabel.text = testInfo[indexPath.row].country
        cell.changeButton.tag = indexPath.row
//        cell.row = indexPath.row
        cell.contentView.backgroundColor = testInfo[indexPath.row].isRed!  ? .red : .white
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alertController = UIAlertController(title: "warning", message: "现在点击第\(indexPath.row)页", preferredStyle: .alert)
        let okay = UIAlertAction(title: "确定", style: .default, handler: {(action) in
            self.view.backgroundColor = .yellow
        })
        let cancel = UIAlertAction(title: "取消", style: .default, handler: {(action) in 
            self.view.backgroundColor = .white
        })
        alertController.addAction(okay)
        alertController.addAction(cancel)
        present(alertController, animated: true, completion: nil)
    }
    
}
