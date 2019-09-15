//
//  newViewController.swift
//  contactBook
//
//  Created by Chitra Hari on 07/08/19.
//  Copyright © 2019 Chitra Hari. All rights reserved.
//

import UIKit

class newViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var nameText = [String]()
    
    var numText = [String]()
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var arrayName = nameText[indexPath.row]
        var arrayNum = numText[indexPath.row]
        var  cell = tblTable.dequeueReusableCell(withIdentifier: "cell") as! subTableViewCell
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBOutlet weak var tblTable: UITableView!
    
}
