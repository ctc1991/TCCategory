//
//  TwoSizesVc.swift
//  TCKit_Demo
//
//  Created by Tech on 2017/8/23.
//  Copyright © 2017年 ctc. All rights reserved.
//

import UIKit

class TwoSizesVc: BaseVc {
    
    var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLbl("TwoSizesVc", color: UIColor.white)
        setLeftBtn("返回", image: "navi_arrow_right", action: #selector(popVc))
        initLbl()
    }
    
    func initLbl() {
        
        label = UILabel()
        label.frame = CGRect(x: 50, y: 164, width: 200, height: 50)
        label.backgroundColor = UIColor.lightGray
        label.font = UIFont.systemFont(ofSize: 15)
        label.text = "约20.0元";
        view.addSubview(label)
        
    }
    
    
    
    @IBAction func actionA(_ sender: UIButton) {
        initLbl()
        label.setSmallTailing(5)
    }
    
    @IBAction func actionB(_ sender: UIButton) {
        initLbl()
        label.setTailingFontSize(25, from: "20")
    }
    
    @IBAction func actionC(_ sender: UIButton) {
        initLbl()
        label.setBoldFontSize(25, to: "20")
    }
    
    @IBAction func actionD(_ sender: UIButton) {
        initLbl()
        label.setBoldFontSize(5, tailingFontSize: 25, divString: "20")
    }
    
    @IBAction func actionE(_ sender: UIButton) {
        initLbl()
        label.setBoldFontSize(25, for: "20")
    }
    
}
