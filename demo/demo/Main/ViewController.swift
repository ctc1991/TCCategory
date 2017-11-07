//
//  ViewController.swift
//  demo
//
//  Created by Tech on 2017/9/4.
//  Copyright © 2017年 ctc. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var cellTexts = [
        "TwoSizes",
        "AlertController"
    ]
    var storyboardIds = [
        "TwoSizesVc",
        "AlertControllerVc"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBarColor(UIColor(hex: 0x4A9EFF))
        titleLbl("TCCategory", color: UIColor.white)
    }
    
    // MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellTexts.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = cellTexts[indexPath.row]
        return cell
    }
    
    // MARK: UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        push(ViewController(sb: "ViewControllers", vc: storyboardIds[indexPath.row]))
    }


}

