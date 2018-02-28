//
//  JYHomeViewController.swift
//  boilerplate-swift
//
//  Created by GujyHy on 2018/2/28.
//  Copyright © 2018年 Gujy. All rights reserved.
//

import UIKit

class JYHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
  
        
        let testButton = UIButton()
        testButton.backgroundColor = UIColor(hex: "cc0000")
        testButton.setTitle("点我一下试试", for: .normal)
        testButton.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        testButton.center = self.view.center
        testButton.addTarget(self, action: #selector(testButtonAction), for: .touchUpInside)
        self.view.addSubview(testButton)
    }
    
    @objc func testButtonAction(_ button:UIButton){
        
        let vc = JYHomeDetailsViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        self.navigationController?.setNavigationBarHidden(true, animated: false)
//    }

   

}
