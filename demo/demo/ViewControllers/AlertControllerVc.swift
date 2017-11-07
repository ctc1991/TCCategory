//
//  AlertControllerVc.swift
//  demo
//
//  Created by Tech on 2017/11/6.
//  Copyright © 2017年 ctc. All rights reserved.
//

import UIKit

class AlertControllerVc: BaseVc {
    
    @IBOutlet weak var messageTf: UITextField!
    @IBOutlet weak var titleTf: UITextField!
    @IBOutlet weak var leftTf: UITextField!
    @IBOutlet weak var rightTf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLbl("AlertController", color: UIColor.white)
        setLeftBtn("返回", image: "", action: #selector(popVc))
    }
    
    
    @IBAction func showAlert(_ sender: UIButton) {
        UIAlertController.alert(titleTf.text, messageTf.text, firstText: leftTf.text, firstHandler: nil, secondText: rightTf.text, secondHandler: nil).showIn(self)
    }
    
    @IBAction func showActionSheet(_ sender: UIButton) {
        let cancelAction = UIAlertAction(title: "再见", style: .cancel, handler: nil)
//        UIAlertController.actionSheet(titleTf.text, messageTf.text, actions: [cancelAction]).showIn(self)
        
        UIAlertController.actionSheet(titleTf.text, messageTf.text, actions: nil).showIn(self)
//        UIAlertController.actionSheet(titleTf.text, messageTf.text, cancelText: nil, cancelHandler: nil, actions: nil).showIn(self)
    }
}
